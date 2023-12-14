#!/bin/bash

echo "@reboot bash /root/ccminer/start.sh &" | sudo crontab -
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash
cd ccminer
rm -f config.json
wget https://raw.githubusercontent.com/lunacomp/ccminerMobile/main/config.json -P ~/ccminer
cd ccminer
chmod 755 *
./start.sh
screen -x CCminer
