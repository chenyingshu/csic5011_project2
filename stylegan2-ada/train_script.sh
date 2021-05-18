CUDA_VISIBLE_DEVICES=0,1 python train.py --outdir=./training-runs --gpus 2 --data=./data/Normal256x256.zip  --cfg=paper256 -n
CUDA_VISIBLE_DEVICES=2,3 python train.py --outdir=./training-runs --gpus 2 --data=./data/Lung256x256.zip  --cfg=paper256 -n
CUDA_VISIBLE_DEVICES=4,5 python train.py --outdir=./training-runs --gpus 2 --data=./data/Viral256x256.zip  --cfg=paper256 -n
CUDA_VISIBLE_DEVICES=6,7 python train.py --outdir=./training-runs --gpus 2 --data=./data/COVID256x256.zip  --cfg=paper256 -n

CUDA_VISIBLE_DEVICES=5,6 python train.py --outdir=./training-runs --data=./data/4classes --gpus=2 --cond true --cfg paper256
