#!/bin/bash
clear

echo "======================================="
echo "=======Installing requirements ========"
echo "======================================="

read -r "This script will install all the necessary modules etc on your Pi so you can run the bot"

sudo apt-get update

sudo apt-get upgrade -y
sudo apt-get install libatlas-base-dev
pip3 install --upgrade pip

pip3 install -U urllib3
pip3 install -U pandas
pip3 install -U requests
pip3 install -U statsmodels
pip3 install -U matplotlib
pip3 install -U binance
pip3 install -U python-binance
pip3 install -U cbpro
pip3 install -U numpy
pip3 install -U views

sudo chmod +x RunBTCEUR.sh
sudo chmod +x RunETHEUR.sh

sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3 /usr/bin/python


exit 0
