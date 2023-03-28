#!/bin/sh

cd ~
rm -rf dtbpatch dtc output.dtb output.dts
# wget --no-check-certificate https://raw.githubusercontent.com/pocopico/rp-ext/main/dtbpatch/releases/dtbpatch
wget --no-check-certificate https://fastly.jsdelivr.net/gh/pocopico/rp-ext@main/dtbpatch/releases/dtbpatch
chmod a+x dtbpatch
./dtbpatch /etc.defaults/model.dtb output.dtb

# wget --no-check-certificate https://raw.githubusercontent.com/pocopico/rp-ext/main/dtbpatch/releases/dtc
wget --no-check-certificate https://fastly.jsdelivr.net/gh/pocopico/rp-ext@main/dtbpatch/releases/dtc
chmod a+x dtc
./dtc -I dtb -O dts output.dtb > output.dts

echo Please enter the following link on your PC to download the dtb file：
curl -fsSL --insecure -w '\n' --upload-file output.dtb https://transfer.sh
echo 

echo Please enter the following link on your PC to download the dts file：
curl -fsSL --insecure -w '\n' --upload-file output.dts https://transfer.sh
echo 
