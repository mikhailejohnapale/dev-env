#!/bin/bash



# update and upgrade
sudo apt-get update
sudo apt-get upgrade



# select, download and install programming font of choice
# http://programmingfonts.org/



# install git
sudo apt-get install git

# git configuration
git config --global \
	user.name "Jan Maghuyop" \
	user.email jangmaghuyop@gmail.com \
	color.ui auto \
	color.branch auto \
	color.diff auto \
	color.status.auto
	credential.helper cache



# ssh config
ssh-keygen -t rsa -C "jangmaghuyop@gmail.com"

# register generated keys to github
# https://help.github.com/articles/generating-ssh-keys/



# teamviewer
wget http://download.teamviewer.com/download/teamviewer_linux.deb
sudo dpkg -i teamviewer_linux.deb
sudo apt-get install -f
sudo teamviewer --daemon disable



# virtualbox
sudo apt-get install dkms
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-4.3



# vagrant
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb



# install dropbox
sudo apt-get install nautilus-dropbox



# atom
cd ~/Downloads
# go to https://atom.io/
# download latest release
sudo dpkg -i atom-amd64.deb

# atom packages
apm install atom-terminal
apm install set-syntax



# install terminator
sudo apt-get install terminator



# copy paste terminator
subl ~/.config/terminator/config
[keybindings]
	paste = <Control>v
	copy = <Control>c



# install hipchat
sudo su
echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
	  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
apt-get update
apt-get install hipchat



# install postgres db server
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install postgresql-9.4

# open postgresql
sudo -u postgres psql postgres



# install nodejs
sudo apt-get install build-essential libssl-dev curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | sh
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc
# restart your terminal
nvm ls-remote
nvm install 0.12.0
nvm alias default v0.12.0



# install bower
npm install -g bower



# install z
cd ~
git clone git@github.com:rupa/z.git .bin/z/



# install flash
# download latest flash plugin in adobe website in tar.gz format
gunzip install_flash_player_11_linux.x86_64.tar.gz
tar -xvf install_flash_player_11_linux.x86_64.tar
sudo cp libflashplayer.so /usr/lib/firefox/browser/plugins



# python dependencies
sudo apt-get install python3-dev



# install pip3
cd ~/Downloads
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py



# install virtualenv in user
pip3 install --user virtualenv
