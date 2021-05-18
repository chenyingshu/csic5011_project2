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

### Training
#### Data processing
Please check the script file "data_process.sh" for details.
For 4-class conditioned training, 
1. run the labeling script "Data/data_class.py": [https://github.com/chenyingshu/csic5011_project2/tree/main/Data#3-generate-data-labeling-file-for-image-synthesis-training-optional ](label data instruction )
2. run the process script for training:
<pre><code>python dataset_tool.py --source=../../Data/COVID-19_Radiography_Dataset_256x256/ --dest=./data/4classes</code></pre>

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


