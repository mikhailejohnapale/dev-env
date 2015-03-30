#!/bin/bash



# git
sudo apt-get install -y git

# git configuration
git config --global user.name "Jan Maghuyop"
git config --global user.email jangmaghuyop@gmail.com
git config --global color.ui auto
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status.auto

# git aliases for git log
echo 'alias glog="git log --graph --pretty=format:'\''%C(blue)%h%Creset - %C(yellow)%s%Creset %C(green)(%cr)%Creset <%aN>'\''"' >> ~/.bashrc



# ssh config
ssh-keygen -t rsa -C "jangmaghuyop@gmail.com"

# register generated keys to github, bitbucket, et. al.
# https://help.github.com/articles/generating-ssh-keys/



# teamviewer
wget http://download.teamviewer.com/download/teamviewer_linux.deb
# The command below will eventually fail, proceed anyway
sudo dpkg -i teamviewer_linux.deb
# install dependencies
sudo apt-get install -f
sudo dpkg -i teamviewer_linux.deb



# virtualbox
sudo apt-get install -y dkms
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-4.3



# vagrant
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb



# dropbox
sudo apt-get install -y nautilus-dropbox



# atom
cd ~/Downloads
# go to https://atom.io/
# download latest deb release
sudo dpkg -i atom-amd64.deb

# atom packages
apm install atom-terminal
apm install set-syntax
apm install autocomplete-plus
apm install emmet
apm install atom-alignment



# terminator
sudo apt-get install -y terminator

# copy paste terminator
subl ~/.config/terminator/config
[keybindings]
	paste = <Control>v
	copy = <Control>c



# scudcloud for slack
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update
sudo apt-get install -y scudcloud
sudo apt-get install hunspell-en-us



# postgres
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y postgresql-9.4

# open postgresql
sudo -u postgres psql postgres



# nodejs
sudo apt-get install -y build-essential libssl-dev curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | sh
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc
# restart your terminal
nvm ls-remote
nvm install 0.12.0
nvm alias default v0.12.0



# bower
npm install -g bower



# z
cd ~
git clone git@github.com:rupa/z.git .bin/z/
echo ". /home/`whoami`/.bin/z/z.sh" >> ~/.bashrc



# flash plugin for firefox
cd ~/Downloads
# go to https://get.adobe.com/flashplayer/
# download tar.gz format
gunzip install_flash_player_11_linux.x86_64.tar.gz
tar -xvf install_flash_player_11_linux.x86_64.tar
sudo cp libflashplayer.so /usr/lib/firefox/browser/plugins



# python dependencies
sudo apt-get install -y python3-dev



# pip3
cd ~/Downloads
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py



# python virtualenv in user
pip3 install --user virtualenv



# make python virtualenv and start with shell
~/.local/bin/virtualenv ~/penv
echo "source ~/penv/bin/activate" >> ~/.bashrc
# restart shell
