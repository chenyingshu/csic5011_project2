FILE=COVID-19_Radiography_Dataset_256x256
URL="https://hkustconnect-my.sharepoint.com/:u:/g/personal/ychengw_connect_ust_hk/EXAw9MX8b9VPhiJhkllcAn4BN-PQTUmWwoDk8rHkDgjeeg?e=RFOxhX&download=1"

ZIP_FILE=./$FILE.zip
TARGET_DIR=./$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./
rm $ZIP_FILE
