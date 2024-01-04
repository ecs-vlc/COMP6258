import torch
import numpy as np
import torchvision.transforms
from kivy.resources import resource_find
from torchvision.models.detection import fasterrcnn_mobilenet_v3_large_fpn, FasterRCNN_MobileNet_V3_Large_FPN_Weights
from torchvision.transforms.functional import to_tensor
from torchvision.utils import draw_bounding_boxes
from PIL import Image

from slideshow.videocapture import VideoCaptureSlide


class RetinaNetDemo(VideoCaptureSlide):
    def __init__(self, **kwargs):
        super().__init__(processor=self.process, **kwargs)

        weights = FasterRCNN_MobileNet_V3_Large_FPN_Weights.DEFAULT
        self.transforms = torchvision.transforms.Compose([torchvision.transforms.Resize(240), weights.transforms()])

        self.labels = weights.meta['categories']
        self.model = fasterrcnn_mobilenet_v3_large_fpn(weights=weights)
        self.model.eval()

        self.device = "cpu"
        if torch.cuda.is_available():
            self.device = "cuda:0"
        if hasattr(torch.backends, "mps") and torch.backends.mps.is_available():
            # self.device = "mps"
            # mps support currently incomplete
            pass

        self.model = self.model.to(self.device)

    def process(self, npimg):
        img255 = torch.from_numpy(npimg).permute(2, 0, 1)
        sf = min(img255.shape[1:]) / 240

        image = self.transforms(img255.to(self.device))
        predictions = self.model(image.unsqueeze(0))[0]
        img255 = draw_bounding_boxes(img255, predictions['boxes'].cpu() * sf,
                                     labels=[self.labels[i] for i in predictions['labels'].cpu()],
                                     font=resource_find("RobotoMono-regular.ttf"), font_size=24)

        return img255.permute(1, 2, 0).numpy()


    # def createImage(width, height, bytedata):
    #     return Image.frombytes('RGB', (width, height), bytedata, 'raw')
	#
    # def detect(width, height, bytedata):
    #     image = createImage(width, height, bytedata)
    #     image = to_tensor(image)
    #     predictions = model(image.unsqueeze(0))[0]
    #     # boxes /= scale
    #     return predictions['boxes'].detach().numpy(), predictions['scores'].detach().tolist(), predictions['labels'].detach().tolist()

