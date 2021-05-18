## Main revision to fit our project
- generate.py: change the output image format to support grayscale image output.

## Requirements
We trained and tested in
- Python 3.7
- pytorch 1.7.0 (CUDA 10.2)
- 2 2080 Ti NVIDIA GPUs with 11GB of GPU memory
- For other requirements, please refer to the original readme description: **https://github.com/NVlabs/stylegan2-ada-pytorch/blob/main/README.md#requirements**

## Quick Start
### Inference

You can direct generate synthetic CXR images from pretrained models.

Please download and put pretrained models in directory "**models/**".

Run the code to randomly generate some CXR images with label: (labels: COVID: 0, Normal: 1, Viral: 2, Lung: 3)
<pre><code>python generate.py --network=models/4classes-cond-paper256-snapshot-025000.pkl --seeds=0-99 --outdir=out/4class-COVID-0-99 --class=0
python generate.py --network=models/1class-COVID-paper256-snapshot-025000.pkl --seeds=0-99 --outdir=out/1class-COVID-0-99 
</code></pre>


### Training
#### Data processing
Please check the script file "data_process.sh" for details.
For 4-class conditioned training, 
1. run the labeling script "Data/data_class.py":
[data labeling instruction](../../Data#3-generate-data-labeling-file-for-image-synthesis-training-optional) 
2. run the process script for training:
<pre><code>python dataset_tool.py --source=../../Data/COVID-19_Radiography_Dataset_256x256/ --dest=./data/4classes</code></pre>

For unconditioned training, just run either one line to get training data format:
<pre><code>python dataset_tool.py --source=../Data/COVID-19_Radiography_Dataset_256x256/Lung_Opacity --dest=./data/Lung256x256.zip 
python dataset_tool.py --source=../Data/COVID-19_Radiography_Dataset_256x256/COVID --dest=./data/COVID256x256.zip 
python dataset_tool.py --source=../Data/COVID-19_Radiography_Dataset_256x256/Normal --dest=./data/Normal256x256.zip 
python dataset_tool.py --source=../Data/COVID-19_Radiography_Dataset_256x256/Viral\ Pneumonia --dest=./data/Viral256x256.zip
</code></pre>

#### Train the model
Run the training code, see official intrusction [here](https://github.com/NVlabs/stylegan2-ada-pytorch/blob/main/README.md#training-new-networks):
<pre><code>python train.py --outdir=~/training-runs --data=~/mydataset.zip --gpus=1 --dry-run
python train.py --outdir=~/training-runs --data=~/mydataset.zip --gpus=1</code></pre>

Please check the example training script file "[train_script.sh](./train_script.sh)" for details.
Here is an example to train 4-class conditioned CXR model:
<pre><code>CUDA_VISIBLE_DEVICES=0,1 python train.py --outdir=./training-runs --data=./data/4classes --gpus=2 --cond=1 --cfg=paper256</code></pre>

And e.g., train unconditioned Normal CXR model:
<pre><code>CUDA_VISIBLE_DEVICES=1 python train.py --outdir=./training-runs --gpus=1 --data=./data/Normal256x256.zip  --cfg=paper256</code></pre>

## License

Copyright &copy; 2021, NVIDIA Corporation. All rights reserved.

This work is made available under the [Nvidia Source Code License](https://nvlabs.github.io/stylegan2-ada-pytorch/license.html).

## Citation

```
@inproceedings{Karras2020ada,
  title     = {Training Generative Adversarial Networks with Limited Data},
  author    = {Tero Karras and Miika Aittala and Janne Hellsten and Samuli Laine and Jaakko Lehtinen and Timo Aila},
  booktitle = {Proc. NeurIPS},
  year      = {2020}
}
```


