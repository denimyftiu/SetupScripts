#!/bin/bash
sudo apt update && sudo apt install upgrade -y
sudo apt install -y git python3.7 python3-pip python3.7-dev socat perl build-essential \
                 gcc cmake php7.2 openjdk-11-jdk openjdk-11-jdk-headless \
                 openjdk-11-jre binwalk openssl vim
python3.7 -m pip install --upgrade pip
python3.7 -m pip install virtualenv
python3.7 -m virtualenv pwnenv
source pwnenv/bin/activate
pip3.7 install pwntools
