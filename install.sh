#!/bin/bash
apt-get update
apt-get upgrade
apt-get install build-essential screen wget curl libusb-dev
cd pcsensor-1.0.1
make
cp pcsensor /usr/bin
mkdir /opt/scripts
cp gettemp.sh /opt/scripts
(crontab -l 2>/dev/null; echo "*/5 * * * * /bin/bash /opt/scripts/gettemp.sh >> /var/log/gettemp.log") | crontab -
