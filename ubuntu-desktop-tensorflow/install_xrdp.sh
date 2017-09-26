#!/bin/bash
sudo apt-get update
#install gnome desktop
sudo apt-get install ubuntu-desktop -y
#install xrdp
sudo apt-get install xrdp -y

#using xfce if you are using Ubuntu version later than Ubuntu 12.04LTS
sudo apt-get install xfce4 -y
#sudo apt-get install xubuntu-desktop -y
sudo echo xfce4-session >/root/.xsession
sudo sed -i '/\/etc\/X11\/Xsession/i xfce4-session' /etc/xrdp/startwm.sh
sudo service xrdp restart

sudo apt-get install python-pip python-dev
pip install tensorflow

sudo apt-get -y install python-pip python-dev python-virtualenv 
virtualenv --system-site-packages ~/tensorflow
source ~/tensorflow/bin/activate
easy_install -U pip
pip install --upgrade tensorflow
sudo apt-get install python3-setuptools
sudo easy_install3 pip
pip3 install --upgrade \
 https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.3.0-cp34-cp34m-linux_x86_64.whl
