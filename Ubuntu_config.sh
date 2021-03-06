#########################################################################
# File Name: Ubuntu_config.sh
# Author: xuzhenqi
# mail: xuzhenqi1993@gmail.com
# Created Time: Tue 25 Feb 2014 03:46:51 PM CST
#########################################################################
#!/bin/bash

# software source config
#echo 'software source config'
#cp /etc/apt/sources.list /etc/apt/sources.list.back
#cp config/sources.list /etc/apt/sources.list
sudo apt-get update

# software set up
echo 'software set up'
sudo apt-get install chromium-browser flashplugin-installer vim subversion vlc virtualbox git indicator-multiload python-pip gparted sshfs nautilus-open-terminal

# local document search engine: recoll
# http://www.lesbonscomptes.com/recoll/
#sudo apt-get install recoll # this one in Ubuntu Source is old
# Download the newest one to index ppt files.
# msword support
sudo apt-get install antiword

# goagent configure
#1. Chromium:http://www.i7086.com/gugelanqichromeshezhigoagentyingyongtuwenjiaocheng
#2. Firefox:https://code.google.com/p/goagent/wiki/FAQ  foxyproxy plugin

# Chinese input method
# 1. ibus
#sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4
# 2. fcitx using sougoupinyin

# input method config
sudo apt-get install im-switch
#1. im-switch
#im-switch -s ibus
#ibus-setup
#2. im-config
#need to log out

# genymotion: Android virtual machine
#http://www.genymotion.com/

# download tools
# follow the webpage: http://blog.csdn.net/luojiming1990/article/details/9078447 to complete the configuration
sudo add-apt-repository ppa:plushuang-tw/uget-stable
sudo apt-get update
sudo apt-get install uget aria2
echo "Next: configure the uget to enable aria2 plugin"

# vim config
echo 'vim config'
cp config/.vimrc ~/.vimrc
cp -r config/.vim ~/

# software upgrade
sudo apt-get upgrade

# github config:https://help.github.com/articles/set-up-git

# install Matlab
sudo mkdir /media/Matlab
sudo mount -o loop [/Matlab-path.iso] /media/Matlab

# install Matlab-support for linux
sudo apt-get install matlab-support

# install Theano

# install Pylearn2

# install numpy scikit-learn matplotlib
##http://scikit-learn.org/stable/install.html

# install ssh-server
sudo apt-get install openssh-server
sudo service ssh start

# install sambda
sudo apt-get install samba samba-common
#Edit /etc/samba/smb.conf

# install zotero : literature management

# install wine 
# This may take a long time to download.
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.7
# sudo apt-get install wine1.6 #this can save a lot of time

# gdb cpp stl support
# http://sourceware.org/gdb/wiki/STLSupport
# edit /path-to-gcss/python/libstdcxx/v6/__init__.py 
# on line 19: from .printers ...
# edit ~/.gdbinit
# on line 6: comment this line.

# Foxit Reader : wine Foxit Reader 6
# Make FoxitReader as default:
# sudo vim /usr/share/applications/defaults.list
# find pdf and change evince to be Foxit Reader


# kuaipan:http://www.kuaipan.cn/d/linux

# install clion
