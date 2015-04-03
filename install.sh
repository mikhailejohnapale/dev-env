#!/bin/bash



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
# python linter
apm install linter linter-pep8
pip install pep8
# add config file
# pep8ExecutePath: /penv/path/
apm install tabs-to-spaces



# zsh, oh-my-zsh
sudo apt-get install zsh
# Login to your github account
# Fork, https://raw.github.com/rodelrebucas/oh-my-zsh
# Clone your newly forked repository
cd
# Change URL firstnamelastname to your account
curl -L https://raw.github.com/firstnamelastname/oh-my-zsh/master/tools/install.sh | sh
chsh -s /bin/zsh
atom ~/.zshrc
# change ZSH_THEME="rodelys"



# git
sudo apt-get install -y git

# git configuration
git config --global user.name "Firstname Lastname"
git config --global user.email firstnamelastname@gmail.com
git config --global color.ui auto
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status.auto

# git aliases for git log
echo 'alias glog="git log --graph --pretty=format:'\''%C(blue)%h%Creset - %C(yellow)%s%Creset %C(green)(%cr)%Creset <%aN>'\''"' >> ~/.zshrc



# ssh config
ssh-keygen -t rsa -C "firstnamelastname@gmail.com"

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



# google drive
# https://www.thefanclub.co.za/how-to/ubuntu-google-drive-client-grive-and-grive-tools
sudo add-apt-repository ppa:thefanclub/grive-tools
sudo apt-get update
sudo apt-get install grive-tools
# Start the application from the dash by searching for Grive Setup
# Once Grive is installed, you will be asked to give Grive permission to access your Google Drive.
# When you click Next a browser window should open and present you with Google Login page.
# Log in to your Google Account.
# You will then be asked to give Grive permission to access you Google Drive.
# Click Accept to continue.
# You will then be give a Google authentication code to copy and paste into the Grive Setup box provided.
# Copy the code from your browser and paste in the Grive Setup box.
# When the first sync is complete the installer will quit.
# After installation you will find a Google Drive and Google Drive Indicator launcher icons in your Dash.
# Click on the Google Drive Indicator to start.



# terminator
sudo apt-get install -y terminator

# copy paste terminator
atom ~/.config/terminator/config
# append bindings below
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
echo ". /home/`whoami`/.bin/z/z.sh" >> ~/.zshrc



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
echo "source ~/penv/bin/activate" >> ~/.zshrc
# restart shell
