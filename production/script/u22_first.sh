#!/bin/bash

sudo apt install -y ntp ntpdate

# 更改時區
sudo timedatectl set-timezone Asia/Taipei
sudo timedatectl set-ntp yes
sudo ntpdate time.stdtime.gov.tw
sudo hwclock -w

echo '120.96.143.50 rke 
120.96.143.43 pm1 
120.96.143.44 pw1 
120.96.143.45 pm2 
120.96.143.46 pw2 
120.96.143.47 pm3' | sudo tee -a /etc/hosts



