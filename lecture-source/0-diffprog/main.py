import PIL.Image as Image
from kivy.resources import resource_find

from diffprog.retinanet import RetinaNetDemo
from slideshow import PictureSlide, Slideshow, PythonCodeREPLSlide, WrapperSlide, VideoSlide

if __name__ == '__main__':
    background = Image.new('RGB', (1920, 1080), color=(255, 255, 255))

    slides = []
    for i in range(59):
        slides.append(PictureSlide(resource_find(f"diffprog/slides/{i:04d}.png")))

    slides[30] = WrapperSlide(resource_find("diffprog/slides/0030.png"),
                              PythonCodeREPLSlide(initial_script_file=resource_find("diffprog/javelin.py"),
                                                  initial_commands=["javelin(theta=0.1, gamma=0.001)"],
                                                  size_hint_y=0.87, pos_hint={'y': 0.0278}))

    slides[50] = WrapperSlide(resource_find("diffprog/slides/0050.png"),
                              VideoSlide(resource_find("diffprog/alphastar.mp4"), repeat=True, size_hint_y=0.8,
                                         pos_hint={'y': 0.039}))

    slides[52] = WrapperSlide(resource_find("diffprog/slides/0052.png"),
                              RetinaNetDemo(size_hint_y=0.815, pos_hint={'y': 0.03}))

    slides[55] = WrapperSlide(resource_find("diffprog/slides/0055.png"),
                              VideoSlide(resource_find("diffprog/animation.mp4"), repeat=False, size_hint_y=0.695,
                                         pos_hint={'y': 0.08}))

    Slideshow(slides, 1920, 1080, background).run()
