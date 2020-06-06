#!/bin/bash

sudo apt update && sudo apt install upgrade -y
sudo apt install -y git python3.8 python3-pip python3.8-dev socat perl build-essential \
                 gcc cmake php7.2 openjdk-11-jdk openjdk-11-jdk-headless \
                 openjdk-11-jre binwalk openssl vim nmap nginx sendmail

sudo apt autoremove && sudo apt clean
