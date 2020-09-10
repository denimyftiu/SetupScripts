#!/bin/bash

sudo apt update && sudo apt install upgrade -y
sudo apt install -y git python3.8 python3-pip python3.8-dev socat perl build-essential \
                 gcc cmake openjdk-11-jdk openjdk-11-jdk-headless i3 \
                 openjdk-11-jre binwalk openssl vim nmap nginx sendmail netcat \
                 net-tools rkhunter

mkdir ~/environments
cat ./addtobashrc.txt >> ~/.bashrc
sudo apt autoremove -y && sudo apt clean
