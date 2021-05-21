## Requirements

tensorflow>=2.3.0
keras
keras-tuner
pandas
numpy
matplotlib
seaborn

## Instruction
### Quick Start
You can download [pretrained models](https://hkustconnect-my.sharepoint.com/:f:/g/personal/ychengw_connect_ust_hk/EqsH7__mhBZPvreuf3oXutoBnLKmaLQPTbbR7RJhcz0Kmw?e=llHOkU) and put models in the directory "models".

The script "**Classification-Prediction.ipynb**" is a demo to use pretrained models to predict give CXR images.

Prediction results for the testing set will be stored as "*classification_DATANAME.csv*". More prediction results can be checked [here](https://hkustconnect-my.sharepoint.com/:f:/g/personal/ychengw_connect_ust_hk/EmdAdToQYalJmvLsH6GgHwUByfrnlDWNqz4Ge8x1NEvxtA?e=AGGFEn).

### Ready-to-use Scripts
In the report we use "**Classification-Real-Data.ipynb**" and "**Classification-Blended-Data-COVID7k-Viral7k.ipynb**" to evaluate classification performance.

More classification experiments on different combined data can be checked (corresponding to Appendix results):

- Classification-Blended-Data-Covid7k.ipynb
- Classification-Blended-Data-Lung7k.ipynb
- Classification-Blended-Data-Viral7k.ipynb
- Classification-Blended-Data-Covid7k-Lung7k-Viral7k.ipynb

