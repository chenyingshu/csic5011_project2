# CSIC 5011 / MATH 5473 Final Project <br>\- Data \- 

**This directory contains the data information, preprocessed data collection instruction.**

## Data Information

Original data link: [https://www.kaggle.com/tawsifurrahman/covid19-radiography-database ](https://www.kaggle.com/tawsifurrahman/covid19-radiography-database ). Assessed in May 2021. 


#### 1. General information of x-rays for lungs: 

Resolution of Grayscale PNG: 299*299 pixels.
 

**Normal [10,192 images]: **

Normally, the lungs appear black in X-ray and CT scans. This indicates that they are free of any visible blockages. 

 

Non-COVID Lung_Opacity (Ground glass opacity) [6,012 images]:  

Ground glass opacity (GGO) refers to the hazy gray areas that can show up in CT scans or X-rays of the lungs. Gray areas indicate increased density, meaning that something is partially filling the air spaces inside the lungs. 

 

**COVID [3,616 images]: **

A 2020 review and meta-analysis found that just over 83% of people with COVID-19-related pneumonia had GGO. 

Another 2020 study in 54 participants found that GGO most commonly showed up in the lower lobes of the lungs as round opacities, but that as the disease progressed, it became more patchy and affected all lobes. 

 

**Viral Pneumonia [1,345 images]:** (non-COVID-19) 

Pneumonia is a serious infection in the lungs. It can result from viruses, bacteria, or fungi. Most often, it occurs as a result of a viral illness, such as influenza (flu), measles, or respiratory syncytial virus. 

*Notice: in original data of Viral Pneumonia, there are some images of 3 channels. 

 

Ref: [https://www.medicalnewstoday.com/articles/ground-glass-opacity#infections ](https://www.medicalnewstoday.com/articles/ground-glass-opacity#infections ) 
<br>

#### 2. Preprocessed Data 

We preprocessed data into 256x256 grayscale (1-channel) images of 4 classes (i.e., Normal, COVID, Lung, Viral) for further use. 

Download link: [Data - OneDrive](https://hkustconnect-my.sharepoint.com/:u:/g/personal/ychengw_connect_ust_hk/EXAw9MX8b9VPhiJhkllcAn4BN-PQTUmWwoDk8rHkDgjeeg?e=RFOxhX)  

Total zip file size: 669MB, Uncompressed size after extraction: 701MB 

 |              | Normal    | COVID-19  | Viral Pneumonia | Lung Opacity |
|--------------|-----------|-----------|-----------------|--------------|
| Resolution   | 256 x 256 | 256 x 256 | 256 x 256       | 256 x 256    |
| #Channels    | 1         | 1         | 1               | 1            |
| Total Number | 10,192    | 3,616     | 1,345           | 6,012        |


##  Instruction
Download preprocessed data:



