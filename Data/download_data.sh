FILE=$1

if [[$FILE != "COVID-19_Radiography_Dataset_256x256" && $FILE != "classification_data" && $FILE != "Synthesis4Class" && $FILE !="Synthesis4Viz"]]; then
    echo "Available datasets are: COVID-19_Radiography_Dataset_256x256, classification_data, Synthesis4Class, Synthesis4Viz"
    exit 1
fi 

if [[$FILE = "COVID-19_Radiography_Dataset_256x256"]]; then
    URL="https://hkustconnect-my.sharepoint.com/:u:/g/personal/ychengw_connect_ust_hk/EXAw9MX8b9VPhiJhkllcAn4BN-PQTUmWwoDk8rHkDgjeeg?e=RFOxhX&download=1"
fi


if [[$FILE = "classification_data"]]; then
    URL="https://hkustconnect-my.sharepoint.com/:u:/g/personal/ychengw_connect_ust_hk/Een2DBh1zI5Gmpj_DbYP6SsB5vwf80xpOe0fL5i1TRtrig?e=7fhZvN&download=1"
fi


if [[$FILE = "Synthesis4Class"]]; then
    URL="https://hkustconnect-my.sharepoint.com/:f:/g/personal/ychengw_connect_ust_hk/EmdAdToQYalJmvLsH6GgHwUByfrnlDWNqz4Ge8x1NEvxtA?e=AGGFEn&download=1"
fi


if [[$FILE = "Synthesis4Viz"]]; then
    URL="https://hkustconnect-my.sharepoint.com/:f:/g/personal/ychengw_connect_ust_hk/EmdAdToQYalJmvLsH6GgHwUByfrnlDWNqz4Ge8x1NEvxtA?e=AGGFEn&download=1"
fi

ZIP_FILE=./$FILE.zip
TARGET_DIR=./$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./
rm $ZIP_FILE
