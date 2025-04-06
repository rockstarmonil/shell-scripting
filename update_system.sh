#!bin/bash

echo "****************Starting system Update*****************"
sudo apt update -y

echo "***************Installing updates**********************"
sudo apt upgrade -y

echo "***************Starting Full System Upgrade************"
sudo apt full-upgrade -y

echo "***************** Cleaning Up ***********************"
sudo apt autoremove -y
sudo apt autoclean

echo "****************Sytem Update Complete!****************"

