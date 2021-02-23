#!/bin/bash

echo "Installing Python 2 and pip2."

sudo apt install python2 -y
curl https://bootstrap.pypa.io/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py

rm -rf get-pip.py

echo "Successfully installed Python 2 and pip2."

echo "Installing Qt4 and the required dependencies."
sudo add-apt-repository ppa:rock-core/qt4 -y
sudo apt update -y

wget http://archive.ubuntu.com/ubuntu/pool/universe/q/qt-assistant-compat/libqtassistantclient4_4.6.3-7build1_amd64.deb
sudo apt install ./libqtassistantclient4_4.6.3-7build1_amd64.deb -y
rm -rf ./libqtassistantclient4_4.6.3-7build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/python-qt4/python-qt4_4.12.1+dfsg-2_amd64.deb
sudo apt install ./python-qt4_4.12.1+dfsg-2_amd64.deb -y
rm -rf ./python-qt4_4.12.1+dfsg-2_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pyaudio/python-pyaudio_0.2.11-1build2_amd64.deb
sudo apt install ./python-pyaudio_0.2.11-1build2_amd64.deb -y
rm -rf ./python-pyaudio_0.2.11-1build2_amd64.deb

echo "Successfully installed Qt4 and the required dependencies."

echo "Install muonic prerequisites (pip2)."
sudo pip2 install matplotlib
sudo pip2 install numpy
sudo pip2 install pyserial
sudo pip2 install scipy
echo "Successfully installed muonic prerequisites."

echo "Install muonic prerequisites (apt)."
sudo apt install python-tk -y
sudo apt install texlive-latex-extra -y
sudo apt install dvipng -y
echo "Successfully installed muonic prerequisites (apt)."

echo "Setting tty and dialout permissions."
sudo usermod -a -G tty $USER
sudo usermod -a -G dialout $USER
echo "Successfully setup tty and dialout permissions."

echo "Creating muonic_data directory."
mkdir ~/muonic_data
echo "Successfully created muonic_data directory."

echo "Setup muonic."
sudo mv bin/muonic muonic.py
echo "Successfully setuo muonic."

echo "1. Reboot your system so that tty and dialout permissions are reloaded."
echo "2. You can start muonic by entering"
echo ""
echo "python2 muonic.py"

# sudo python setup.py install