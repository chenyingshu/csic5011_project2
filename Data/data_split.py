'''
By Yingshu CHEN, May 2021

This script is split data into train and test set with given ratio
'''

import os
import numpy as np
import shutil
import random
import argparse

parser = argparse.ArgumentParser(description="Dataset divider")
parser.add_argument("--root", default="./COVID-19_Radiography_Dataset_256x256", help="Path to data")
parser.add_argument("--save_path", default="./classification_data", help="Path to save splited data")
parser.add_argument("--test_ratio", default=0.2, help="Test ratio - 0.2 means splitting data in 80 % train and 20 % test")
args = parser.parse_args()

root_dir = args.root
dest_dir = args.save_path
classes_dir = [name for name in os.listdir(root_dir) if os.path.isdir(os.path.join(root_dir, name))]
test_ratio = args.test_ratio

os.makedirs(dest_dir, exist_ok=True)
os.makedirs(os.path.join(dest_dir,'train'), exist_ok=True)
os.makedirs(os.path.join(dest_dir,'test'), exist_ok=True)
print('Split data in %s with %d classes' %(root_dir, len(classes_dir)))
print('Destination path: ', dest_dir)
print('Test ratio %.4f' %(test_ratio))
print()

cnt = 0
for cls in classes_dir:
	cnt += 1
	os.makedirs(os.path.join(dest_dir,'train', cls))
	os.makedirs(os.path.join(dest_dir,'test', cls))

	src = os.path.join(root_dir, cls)

	allFileNames = os.listdir(src)
	np.random.shuffle(allFileNames)
	train_FileNames, test_FileNames = np.split(np.array(allFileNames),[int(len(allFileNames)* (1 - test_ratio))])

	train_FileNames = [os.path.join(src, name) for name in train_FileNames.tolist()]
	test_FileNames = [os.path.join(src, name) for name in test_FileNames.tolist()]

	print("************ Splitting and Copying %d/%d *****************" %(cnt, len(classes_dir)))
	print('Class name: ', cls)
	print('Total images: ', len(allFileNames))
	print('Training: ', len(train_FileNames))
	print('Testing: ', len(test_FileNames))
	print("*****************************")
	print()


	for name in train_FileNames:
	    shutil.copy(name, os.path.join(dest_dir,'train', cls))

	for name in test_FileNames:
	    shutil.copy(name, os.path.join(dest_dir,'test', cls))

print("Data Spliting and Copying Done!")