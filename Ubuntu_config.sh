#########################################################################
# File Name: Ubuntu_config.sh
# Author: xuzhenqi
# mail: xuzhenqi1993@gmail.com
# Created Time: Tue 25 Feb 2014 03:46:51 PM CST
#########################################################################
#!/bin/bash

# software source config
echo 'software source config'
cp /etc/apt/sources.list /etc/apt/sources.list.back
cp config/sources.list /etc/apt/sources.list
sudo apt-get update

# software set up
echo 'software set up'
sudo apt-get install chromium-browser flashplugin-installer vim ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4 subversion

# download tools
# follow the webpage: http://blog.csdn.net/luojiming1990/article/details/9078447 to complete the configuration
sudo add-apt-repository ppa:plushuang-tw/uget-stable
sudo add-apt-repository ppa:t-tujikawa/ppa
sudo apt-get update
sudo apt-get install uget aria2
echo "Next: configure the uget to enable aria2 plugin"

# input method config
im-switch -s ibus
ibus-setup

# install wine
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.7

# firofox uninstall
echo 'firefox uninstall'
sudo apt-get remove firefox firefox*

# vim config
echo 'vim config'
cp config/.vimrc ~/.vimrc

# software upgrade
sudo apt-get upgrade

# github config

# install Matlab

# install Theano

# install Pylearn2

# install ssh-server
sudo apt-get install openssh-server
sudo service ssh start
