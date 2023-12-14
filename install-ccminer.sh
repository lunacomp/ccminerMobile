#!/bin/bash

killall ccminer
echo "@reboot bash /root/ccminer/start.sh &" | sudo crontab -
rm -rf ccminer
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash
cd ccminer
rm -f config.json
wget "https://www.dropbox.com/scl/fi/rmqg6e3lhhq8r9qh1zl0h/config.json?rlkey=57mc20eki4fh01nf6fp6ztuu1&dl=0" -O config.json
cd ccminer
chmod 755 *
./start.sh
screen -x CCminer
