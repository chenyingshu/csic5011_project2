# classes
# COVID: 0 
# Normal: 1
# Viral: 2
# Lung: 3

CUDA_VISIBLE_DEVICES=1 python generate.py --network=models/1class-COVID-paper256-snapshot-025000.pkl --seeds=0-511 --outdir=out/1class-COVID_0-511

CUDA_VISIBLE_DEVICES=1 python generate.py --network=training-runs/00001-COVID256x256-paper256/network-snapshot-003628.pkl --seeds=0-999 --outdir=out/1class-COVID-03628_0-999 

CUDA_VISIBLE_DEVICES=1 python generate.py --network=models/4classes-cond-paper256-snapshot-025000.pkl --seeds=0-99 --outdir=out/4class-Viral-_0-99 --class=2



