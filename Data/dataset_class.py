'''
By Yingshu CHEN, May 2021

This script is used to create a json file that 
contains labeling information for conditional generation (StyleGAN-ada)

labeling file example:

{
      "labels": [
          ["00000/img00000000.png",0],
          ["00000/img00000001.png",2],
          ... repeated for every image in the datase
          ["00049/img00049999.png",1]
      ]
  }

Usage:
python dataset_class.py --root COVID-19_Radiography_Dataset_256x256
'''

import os
import glob
import json
import argparse


parser = argparse.ArgumentParser()
parser.add_argument('--root', default='train', help='image directory root')
opts = parser.parse_args()

data = {}
data['labels'] = []
root = opts.root
folders = [name for name in os.listdir(opts.root) if os.path.isdir(os.path.join(root, name))]

idx = 0
for folder in folders:
	print("Processing %d/%d class" %(idx+1, len(folders)))

	img_lists = sorted(glob.glob(os.path.join(root, folder, "*.png")))
	for img in img_lists:
		file_name = os.path.basename(img)
		data['labels'].append([folder+'/'+file_name, idx])

	idx += 1




with open('dataset.json', 'w') as outfile:
	json.dump(data, outfile)
