# CSIC 5011 / MATH 5473 Final Project <br>Imaging’s Potential to Assist in COVID-19 Crisis
> Coronavirus disease 2019 (COVID-19) is a contagious disease caused by severeacute respiratory syndrome coronavirus 2 (SARS-CoV-2).
> An efficient and accu-rate abnormalities detection in chest X-rays (CXR) of infected patients can assisthealth care staff in the battle against COVID-19.
> 
> We investigate the potential of synthetic images additional to existing dataset to improveCOVID-19 CXR classification accuracy.

## Members

- YS. CHEN
- WH. SUM
- HP. IP
- ZP. WU


## Instruction
- csic5011_project2.pdf is the final report.
- Image_Assist_COVID_ChenSumIpWu.pptx is the presentaion slides.
- presentaion video link: 
- "Code" contains main source codes in the report.
- "Data" contains data collection information.
- "Results" contains some results.

## Result Gallery
### Real vs Synthetic Chest X-rays
<!-- ![alt text](./Results/real_covid.png "Real COVID CXRs") -->
<div style="display: flex">
  <img src="./Results/real_covid.png" alt="Real COVID-19 CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/real_lung.png" alt="Real Lung Opacity CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/real_normal.png" alt="Real Normal CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/real_viral.png" alt="Real Viral PNA CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/fake_covid.png" alt="Synthetic COVID-19 CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/fake_lung.png" alt="Synthetic Lung Opacity CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/fake_normal.png" alt="Synthetic Normal CXRs"  style="float: left; margin-right: 10px;" width="45%" />
  <img src="./Results/fake_viral.png" alt="Synthetic Viral PNA CXRs"  style="float: left; margin-right: 10px;" width="45%" />
</div>


## Acknowledgements

The code in "Classification.ipynb" borrows heavily from [Kaggle code](https://www.kaggle.com/mahmoudreda55/x-ray-covid19-95 "Kaggle code").


The code in "stylegan2-ada" borrows heavily from [stylegan2-ada-pytorch](https://github.com/NVlabs/stylegan2-ada-pytorch "stylegan2-ada-pytorch").
