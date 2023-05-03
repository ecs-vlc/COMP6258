---
layout: index
title: "COMP6258: Differentiable Programming and Deep Learning"
subtitle: "2022-23"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Professor Jonathon Hare</a>.
---


<h2> Contents </h2>
{::options parse_block_html="true" /}
<nav>
* TOC
{:toc}
</nav>
{::options parse_block_html="false" /}

## Welcome

Welcome to the homepage for the ECS [COMP6258 Differentiable Programming and Deep Learning](https://secure.ecs.soton.ac.uk/module/COMP6258) module.

Differentiable Programming and Deep learning has revolutionised numerous fields in recent years. We've witnessed improvements in everything from computer vision through speech analysis to natural language processing as a result of the advent of cheap GPGPU compute coupled with large datasets and some neat algorithms. More broadly, the idea of 'Differentiable Programming', in which we define entire programs as compositions of differentiable operations which can then be optimised to fit data, looks to become a new norm in how we utilise computers.

This module will look at how differentiable programming works, from theoretical foundations right through to practical implementation. We'll study key aspects such as automatic differentiation, look at models for _deep learning_ such as convolutional and recurrent neural networks, as well as considering current research in depth. Along the way we'll also look at aspects of biology and neuroscience, and see how ideas from these fields feed-in to current research.

The overall aim of this module is not to teach you to be able to train pre-existing models (although you will learn to do that!), but rather to equip you with the fundamental skills to be able to understand and implement models and ideas that are currently being developed by researchers. We intend to equip you with the knowledge needed to understand new ideas as they are published, and give you the ability to constructively criticise, and identify limitations, of different approaches.

As a word of warning, this is a mathematical module: the predominant focus is on looking at models that can be optimised via gradient methods. You need to have a good grasp of linear (matrix) algebra and matrix calculus, as well as the fundamentals of machine learning, probability and statistics. You will also necessarily be comfortable with Python programming and the use of numeric/matrix libraries such as `numpy` or `pytorch`. You'll also be expected to read and try to understand scientific papers along the way.


## Lectures and assigned reading

This year the lectures for this course will be given by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Professor Jonathon Hare</a> ([email](mailto:jsh2@soton.ac.uk)) and <a href="https://secure.ecs.soton.ac.uk/people/se3e22">Dr Shoaib Ehsan</a> ([email](mailto:se3e22@soton.ac.uk)). We have a capable team of PhD students to facilitate the lab sessions and run some of our guest lectures.

There will be three lectures each week: Mondays at 5pm, Thursdays at 1pm and Fridays at 2PM. Labs take place for 8 weeks, starting in week 2, from 4PM - 6PM on Fridays. The lectures and labs will all take place in person. 

By taking part in this module we _expect_ you to turn up to the lectures and get involved - asking questions and provoking discussion is positively encouraged. Some of the lecture slots will be used for "seminars" where will discuss and work through a scientific paper in detail; you will need to prepare for these by reading the paper carefully in advance. Some of the slots will be used for a series of guest lectures covering a range of topics.

The current working timetable/plan is below, and illustrates the topics we intend to cover, but this will evolve as the course progresses. Many of the lectures are coupled with assigned reading materials that you should read before the lecture takes place. This will broaden your understanding of the topic whilst giving you the skills required to read and understand the key points from recent research literature. The lectures are broadly broken into three groups: fundamentals (weeks 1-5), architectures/models (weeks 5-8), and advanced topics (weeks 9-12).  


| Week | Date   | Location | Topic                                                                                                                      | Handouts                                                                            | Reading Material                        | Lecture Video      |
|------|--------|----------|----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|-----------------------------------------|--------------------|
| 1    | 30-Jan | 35/1005  | Lecture: Differentiable Programming: How does pre-university calculus relate to AI and the future of computer programming? | [diffprog-handouts.pdf](handouts/diffprog-handouts.pdf)                             | [Chapter 1 of Jon's unfinished book](handouts/Differentiable_Programming.pdf)  | [Panopto link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=6d0bbd86-e5c6-4474-8aa6-af9a0118357d)   |
|      | 02-Feb | 44/1041  | Lecture: Introduction to the module, coursework, labs & quizzes.                                                           | [intro-handouts.pdf](handouts/intro-handouts.pdf)                                   |                                         | [Panopto link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=55f58ff0-4fb2-4d3b-8a8f-af9d00d650d5)   |
|      | 03-Feb | 35/1005  | Lecture: Review of fundamentals                                                                                            | [mlreview-handouts.pdf](handouts/mlreview-handouts.pdf)                             | [CH 3 of Michael Nielsen's Book](http://neuralnetworksanddeeplearning.com/chap3.html) | [Panopto link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=61e8f5ee-7a5d-435e-89c5-af9e00e60cf9); [Extra info on tensors](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=945d2103-bb30-471a-a068-af9e01371018)|
| 2    | 06-Feb | 35/1005  | Lecture: The Power of Differentiation                                                                                      | [differentiate-handouts.pdf](handouts/differentiate-handouts.pdf)                   | [Chapter 3 of Jon's unfinished book](handouts/Differentiable_Programming.pdf) | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=1ac20cea-886f-4c4d-b045-afa1011825fc)  |
|      | 09-Feb | 44/1041  | Lecture: Automatic Differentiation                                                                                         | [autograd-handouts.pdf](handouts/autograd-handouts.pdf)                             | [Automatic differentiation in PyTorch](https://openreview.net/pdf?id=BJJsrmfCZ) | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=00a6c4fb-e765-4c99-9458-afa400d60660) |
|      | 10-Feb | 35/1005  | NO LECTURE                                                                                                                 |                                                                                     |                                         |  |
| 3    | 13-Feb | 35/1005  | Guest Lecture: Experiment design                                                                                           |                                                                                     |                                         | [Panopto link]() |
|      | 16-Feb | 44/1041  | Guest Lecture: Emergent Communication                                                                                      |                                                                                     |                                         | [Panopto link]() |
|      | 17-Feb | 35/1005  | Guest Lecture: Neural Networks can't do math                                                                               |                                                                                     |                                         | [Panopto link]() |
| 4    | 20-Feb | 35/1005  | Lecture: Backpropagation                                                                                                   | [backprop-handouts.pdf](handouts/backprop-handouts.pdf)                             | [Learning representations by back-propagating errors](handouts/nature_article.pdf)   | [Panopto link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=edd2ae44-7f30-4de7-acba-afaf01186ac0) |
|      | 23-Feb | 44/1041  | Lecture: Optimisation                                                                                                      | [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf)                     | [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)                   | [Panopto link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=3b1be3a1-ff6d-4484-82db-afb200d62386) |
|      | 24-Feb | 35/1005  | Lecture: Going Deep: Universal approximation, overfitting and regularisation                                               | [deepnetworks-handouts.pdf](handouts/deepnetworks-handouts.pdf)                     | [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](handouts/srivastava14a.pdf) | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=ed95319e-5095-43f4-9585-afb300e66bff)|
| 5    | 27-Feb | 35/1005  | Seminar: The Implicit bias of Gradient Descent                                                                             | | [The Implicit bias of Gradient Descent](https://www.jmlr.org/papers/volume19/18-188/18-188.pdf) | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=54192c3f-0845-42f2-b137-afb601182246) |
|      | 02-Mar | 44/1041  | Lecture: A Biological Perspective                                                                                          | [biological-inspiration-handouts.pdf](handouts/biological-inspiration-handouts.pdf) | [How Convolutional Neural Network Architecture Biases Learned Opponency and Color Tuning](https://www.mitpressjournals.org/doi/pdf/10.1162/neco_a_01356) | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=2ca4fe0b-818c-4381-bb52-afb900d66596) |
|      | 03-Mar | 35/1005  | Lecture: Convolutional Networks                                                                                            | [Convolution-handouts.pdf](handouts/Convolution-handouts.pdf)                       | [handwritten digit recognition with a back-propagation network](https://papers.nips.cc/paper/293-handwritten-digit-recognition-with-a-back-propagation-network.pdf)                                        |  [Panopto Link - Sorry mananged not to hit record; this is a previous recording - the only major difference is that there was a stronger emphasis on the linearity of Convolution (e.g. a conv layer can trivially be implemented by a fully connected layer)](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=36042d3b-1747-4810-acc1-ace200cf6775) |
| 6    | 06-Mar | 35/1005  | Lecture: Networks Architectures for image classification                                                                   | [Architectures-handouts.pdf](handouts/Architectures-handouts.pdf)                   | [ImageNet Classification with Deep Convolutional Neural Networks](https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf), [Striving for Simplicity: The All Convolutional Net](https://arxiv.org/pdf/1412.6806.pdf), [Very Deep Convolutional Networks for Large-Scale Image Recognition](https://arxiv.org/pdf/1409.1556.pdf), [Going Deeper with Convolutions](https://arxiv.org/pdf/1409.4842), [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf) |  [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d44d125e-629d-493b-b1d9-afbd0118cd4a) |
|      | 09-Mar | 44/1041  | Lecture: Networks Architectures for image classification (II)                                                              | as above                                                                            |       |   [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=5e77c866-d48c-480d-b0b2-afc000d63eb4) |
|      | 10-Mar | 35/1005  | Lecture: Embeddings                                                                                                        | [Embeddings-handout.pdf](handouts/Embeddings-handouts.pdf) | [Efficient Estimation of Word Representations in Vector Space](https://arxiv.org/pdf/1301.3781.pdf)    | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=91c4cbf4-3060-4ec5-8929-afc100e69120) |
| 7    | 13-Mar | 35/1005  | Lecture: Recurrent Neural Networks                                                                                         | [rnn-handout.pdf](handouts/rnns-handouts.pdf)    |[The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) | [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=af30e53e-db2b-40fb-b9af-afc40118342c) |
|      | 16-Mar | 44/1041  | Lecture: LSTMs and GRUs                                                                                                    | [lstm-handout.pdf](handouts/lstm-handouts.pdf)  | [Recurrent Neural Network Regularization](https://arxiv.org/pdf/1409.2329.pdf) | [Panopto link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=78a2e6b5-a408-4ed1-bde0-afc700d605a1) |	
|      | 17-Mar | 35/1005  | Lecture: Auto-encoders, unsupervised learning and self-supervision                                                         | [vaes-handout.pdf](handouts/autoencoders-handouts.pdf)   |      [ Blog Post on Autoencoders](https://blog.keras.io/building-autoencoders-in-keras.html) |  [Panopto Link]() |
| 8    | 20-Mar | 35/1005  | NO LECTURE                                                                       |                                                                       | |      |   
|      | 23-Mar | 44/1041  | Seminar: Self-supervised learning                                                                                          | [Barlow Twins](https://arxiv.org/pdf/2103.03230.pdf) |       | [Panopto Link]()  |
|      | 24-Mar | 35/1005  | Lecture: Differentiable relaxations (sampling, etc.)                                                                       | [relaxation-handout.pdf](handouts/relaxation-handouts.pdf) |       | [Panopto Link]()  |
| 9    | 24-Apr | 35/1005  | Lecture: Generative Models Part 1: Differentiable Generator Networks                                                       | [gans-handout.pdf](handouts/gans-handouts.pdf)              | |    [Panopto Link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=838c0ca7-aee7-4d33-8ae0-afee0107d21a)   | 
|      | 27-Apr | 44/1041  | NO LECTURE                                                                       |                                                                       | |      |   
|      | 28-Apr | 35/1005  | Lecture: Generative Models Part 2: Variational Autoencoders                                                                | [gans-handout.pdf](handouts/gans-handouts.pdf)                         | [Autoencoding Variational Bayes](https://arxiv.org/abs/1312.6114) | [Panopto Link]()  |
| 10   | 01-May |          | BANK HOLIDAY                                                         | | | [Panopto Link]() |
|      | 04-May | 58/1009  | Lecture: Generative Models Part 3: Generative Adversarial Networks                                                         | [gans-handout.pdf](handouts/gans-handouts.pdf)             | [GANs](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf), [DCGANs](https://arxiv.org/pdf/1511.06434.pdf) | [Panopto Link]() |                                                                                                         
|      | 04-May | 44/1041  | Lecture: Attention.                                                  | | [attention-handout.pdf](handouts/attention-handouts.pdf) |       | [Panopto Link]()|
|      | 05-May | 35/1005  | Seminar: Set prediction                                              | [Deep Set Prediction Networks](https://proceedings.neurips.cc/paper_files/paper/2019/file/6e79ed05baec2754e25b4eac73a332d2-Paper.pdf) | | [Panopto Link]() |
| 11   | 08-May |          | BANK HOLIDAY                                                         | | | [Panopto Link]() |
|      | 11-May | 58/1009  | Lecture: TBC                                                         | | | [Panopto Link]() |
|      | 11-May | 44/1041  | Lecture: TBC                                                         | | | [Panopto Link]() |
|      | 12-May | 35/1005  | Lecture: TBC                                                         | | | [Panopto Link]() |
| 12   | 15-May | 35/1005  | Seminar: Diffusion Models                                            | | | [Panopto Link]() |
|      | 18-May | 44/1041  | Lecture: TBC                                                         | | | [Panopto Link]() |
|      | 19-May | 35/1005  | Lecture: TBC                                                         | | | [Panopto Link]() |



### Assorted topic lectures

These are bonus lectures/talks on topics that were requested by students in previous years that you can watch. If there are additional topics that you would like covered, then let us know.


| Topic | Description | Handouts/slides | Video |
|-------|-------------|----------|-------|
| Distributed Learning | How can you distribute large models and data over many machines? This is a huge topic, but I made two lectures for advanced machine learning on it (which I've also made available here in case you're not taking it) which cover the basics of both the hardware bottlenecks and the software mitigations to these bottlenecks. | [Interactive slides and handouts](https://github.com/jonhare/comp6208) | [Part&nbsp;1](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cfdd4537-a475-4fa1-891f-ab9700ddb5af) <br/> [Part 2](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=acfc5efe-5e52-4c42-9c8c-ab9701157624) |
| Attention is (possibly) all you need | Recent trends, particularly in models for mining textual data, have used "attentional" mechanisms to get breakthrough performance and move away from recurrent networks; what is this attention and how does it work? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=4cc3ffd1-bd8d-4c46-b45a-abbf0126a33b) |
| Neural architecture search | A few people have asked how you design a network architecture; that's quite a difficult question as it relies on a lot of intuition (possibly with some inspiration from biology) and trial & error. There is an alternative though... Why not let the network design itself? There are a number of approaches to what is called Neural Architecture Search, but most use horribly inefficient Reinforcement Learning, so we'll just take a little look at a nifty differentiable approach called "DARTS". |       | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d92f57a4-5211-4d14-9a79-abc00103ada5) | 
| Hardware Considerations | Deep networks typically require power-hungry hardware and lots of memory. Can you reduce the requirements and optimise for lower-powered hardware? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cf3d32d1-7f66-490c-853f-abc20137ca06) |


## Labs

For 8 of the weeks (starting week 2) we are organising a 2-hour lab session in which you will need to complete a series of worksheets. The worksheets have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs. A team of PhD-student demonstrators will be available in the lab to help you with any questions you might have about the topics you are working on.

40% of the marks for the module are for lab work. Each of the 8 lab sessions will be accompanied by an additional assessed exercise for you to work through in your own time. You will have to work through the exercises __by yourself__ and succinctly write-up your findings. You will submit your answers/findings/working to all the assessed exercises to [handin](https://handin.ecs.soton.ac.uk/handin/2223/COMP6258/2/) in week 10 for marking (3rd May, 16:00). Each of the 8 exercises will be worth 5% of your overall module mark. We recommend that you do the exercise accompanying the lab as soon as possible after the lab session, rather than leaving them all to the end.

Labs will start in the second week (10th Feb) 4-6 on Friday afternoons. The labs take place physically in a computer room (25/1007) with the demonstrator team (and Jon when possible). The demonstrators can offer advice on both the labs as well as the group coursework, however you should not ask them about the assessed lab exercises that you complete after the lab.

The full lab schedule is below:

| Week | Date   | Location | Topic                                                                                                 | Exercise Link                        |
|------|--------|----------|-------------------------------------------------------------------------------------------------------|--------------------------------------|
| 1    | 01-Feb | NO LAB   |                                                                                                       |                                      |
| 2    | 10-Feb | 25/1007  | [Introducing PyTorch](./labs/lab1/)                                                                   | [Lab 1 Exercise](labex/lab1ex.pdf) |
| 3    | 17-Feb | 25/1007  | [Automatic Differentiation](./labs/lab2/)                                                             | [Lab 2 Exercise](labex/lab2ex.pdf) |
| 4    | 24-Feb | 25/1007  | [Optimisation](./labs/lab3/)                                                                          | [Lab 3 Exercise](labex/lab3ex.pdf) |
| 5    | 03-Mar | 25/1007  | [Implementing simple Neural Networks using PyTorch and Torchbearer](./labs/lab4/)                     | [Lab 4 Exercise](labex/lab4ex.pdf) |
| 6    | 10-Mar | 25/1007  | [Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer](./labs/lab5/) | [Lab 5 Exercise](labex/lab5ex.pdf) |
| 7    | 17-Mar | 25/1007  | [Using pretrained models and transfer learning](./labs/lab6)                                          | [Lab 6 Exercise](labex/lab6ex.pdf) |
| 8    | 24-Mar | 25/1007  | [Recurrent Networks, Sequence Prediction and Embeddings](./labs/lab7)                                 | [Lab 7 Exercise](labex/lab7ex.pdf) |
| 9    | 28-Apr | 25/1007  | [Autoencoders and Deep Generative Models](./labs/lab8)                                                | [Lab 8 Exercise](labex/lab8ex.pdf) |
| 10   | 6-May  | NO LAB   |                                                                                                       |                                      |
| 11   | 13-May | NO LAB   |                                                                                                       |                                      |
| 12   | 20-May | NO LAB   |                                                                                                       |                                      |

__Note: I've made all the worksheet links available from last year. Please don't be surprised if we make some updates before each session! We're also actively updating the assessed exercises and will release these nearer the time.__

## Online Quizzes

There will be two assessed online-quizzes; We are planning for these to be on the 8th March and 10th May. These will be available on blackboard for a 24 hour period and once started you must complete them within one hour. The quizzes must be taken independently by yourself and you should not share questions/answers with others.

## Coursework assignment
Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).

## Where to get additional help

Talk to us! You are more than welcome to arrange to meet to discuss issues related to the course during lab sessions or by appointment. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). We can be reached by teams or [Jon's email](mailto:jsh2@ecs.soton.ac.uk) or [Shoaib's email](se3e22@soton.ac.uk).


