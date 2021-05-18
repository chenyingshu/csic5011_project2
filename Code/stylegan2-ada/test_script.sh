# classes
# COVID: 0 
# Normal: 1
# Viral: 2
# Lung: 3
CUDA_VISIBLE_DEVICES=1 python generate.py --network=training-runs/00000-COVID256x256-auto1/network-snapshot-002600.pkl --seeds=0-511 --outdir=out/1class-COVID-003830_0-511

CUDA_VISIBLE_DEVICES=1 python generate.py --network=
training-runs/00006-COVID256x256-paper256/network-snapshot-003628.pkl --seeds=0-999 --outdir=out/1class-COVID-03628_0-999 

CUDA_VISIBLE_DEVICES=1 python generate.py --network=
training-runs/00007-4classes-cond-paper256/network-snapshot-003628.pkl --seeds=0-999 --outdir=out/4class-Viral-003628_0-999 --class=2



