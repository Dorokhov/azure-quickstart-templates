#!/bin/bash
sudo apt-get update


sudo apt-get -y install python3-pip python3-dev
sudo apt-get -y install python3-pip python3-dev python-virtualenv
virtualenv --system-site-packages -p python3 ~/tensorflow
source ~/tensorflow/bin/activate
easy_install -U pip
pip3 install tensorflow 

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
