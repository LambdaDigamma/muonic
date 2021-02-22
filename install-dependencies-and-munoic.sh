#!/bin/bash

sudo add-apt-repository ppa:rock-core/qt4 -y
sudo apt-get update -y

wget http://archive.ubuntu.com/ubuntu/pool/universe/q/qt-assistant-compat/libqtassistantclient4_4.6.3-7build1_amd64.deb
sudo apt-get install ./libqtassistantclient4_4.6.3-7build1_amd64.deb -y
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/python-qt4/python-qt4_4.12.1+dfsg-2_amd64.deb
sudo apt-get install ./python-qt4_4.12.1+dfsg-2_amd64.deb -y
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pyaudio/python-pyaudio_0.2.11-1build2_amd64.deb
sudo apt-get install ./python-pyaudio_0.2.11-1build2_amd64.deb -y

sudo pip install matplotlib
sudo pip install numpy
sudo pip install serial
sudo apt install python-tk -y
sudo pip install scipy

sudo python setup.py install
sudo mv bin/muonic muonic.py
mkdir ~/muonic_data