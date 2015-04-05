# Programs


## Text Editor - Atom
Go to https://atom.io, download latest deb release.
Open a terminal copy and paste the commands below line per line.
```
cd ~/Downloads
sudo dpkg -i atom-amd64.deb
```

### Atom Packages
Open a terminal copy and paste the commands below line per line.
```
apm install atom-terminal
apm install set-syntax
apm install autocomplete-plus
apm install emmet
apm install atom-alignment
apm install linter linter-pep8
apm install tabs-to-spaces
```


## Shell - Zsh, oh-my-zsh
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y zsh
sudo apt-get install -y curl
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
atom ~/.zshrc
```
- In .zshrc change ZSH_THEME="ys"
- Restart the shell to apply configuration.



## Version Control - Git
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y git
```
### Git configuration
Open a terminal copy and paste the commands below line per line.
```
git config --global user.name "Firstname Lastname"
git config --global user.email firstnamelastname@gmail.com
git config --global color.ui auto
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status.auto
echo 'alias glog="git log --graph --pretty=format:'\''%C(blue)%h%Creset - %C(yellow)%s%Creset %C(green)(%cr)%Creset <%aN>'\''"' >> ~/.zshrc
```


## Security and Ease - Generate SSh key
Open a terminal copy and paste the commands below line per line.
```
ssh-keygen -t rsa -C "firstnamelastname@gmail.com"
```
- Register generated keys to github, bitbucket, et. al.
- https://help.github.com/articles/generating-ssh-keys



## Remote Assistance - Teamviewer
Open a terminal copy and paste the commands below line per line.
```
cd ~/Downloads
wget http://download.teamviewer.com/download/teamviewer_linux.deb
```
The command below will eventually fail, proceed anyway.
Open a terminal copy and paste the commands below line per line.
```
sudo dpkg -i teamviewer_linux.deb
```
Install missing dependencies.
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -f
sudo dpkg -i teamviewer_linux.deb
```


## Virtualization - Virtualbox, Vagrant
### Virtualbox
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y dkms
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-4.3
```
### Vagrant
Open a terminal copy and paste the commands below line per line.
```
cd ~/Downloads
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb
```


## Cloud Storage - Dropbox, Google Drive
### Dropbox
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y nautilus-dropbox
```

### Google Drive
Visit the link, https://www.thefanclub.co.za/how-to/ubuntu-google-drive-client-grive-and-grive-tools
Open a terminal copy and paste the commands below line per line.
```
sudo add-apt-repository ppa:thefanclub/grive-tools
sudo apt-get update
sudo apt-get install grive-tools
```
1. Start the application from the dash by searching for Grive Setup
2. Once Grive is installed, you will be asked to give Grive permission to access your Google Drive.
3. When you click Next a browser window should open and present you with Google Login page.
4. Log in to your Google Account.
5. You will then be asked to give Grive permission to access you Google Drive.
6. Click Accept to continue.
7. You will then be give a Google authentication code to copy and paste into the Grive Setup box provided.
8. Copy the code from your browser and paste in the Grive Setup box.
9. When the first sync is complete the installer will quit.
10. After installation you will find a Google Drive and Google Drive Indicator launcher icons in your Dash.
11. Click on the Google Drive Indicator to start.



## Shell Emulator - Terminator
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y terminator
atom ~/.config/terminator/config
```
Append key bindings below.
```
[keybindings]
	paste = <Control>v
	copy = <Control>c
```


## Communication - Scudcloud
Open a terminal copy and paste the commands below line per line.
```
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update
sudo apt-get install -y scudcloud
sudo apt-get install -y hunspell-en-us
```


## Database - PostgreSQL
Open a terminal copy and paste the commands below line per line.
```
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y postgresql-9.4
sudo -u postgres psql postgres
```


## Nodejs
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y build-essential libssl-dev curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | sh
echo "source ~/.nvm/nvm.sh" >> ~/.zshrc
```
Restart the terminal.
Open a terminal copy and paste the commands below line per line.
```
nvm ls-remote
nvm install 0.12.0
nvm alias default v0.12.0
```


## Bower
Open a terminal copy and paste the commands below line per line.
```
npm install -g bower
```


## Directory Jumper - z
Open a terminal copy and paste the commands below line per line.
```
cd ~
git clone git@github.com:rupa/z.git .bin/z/
echo ". /home/`whoami`/.bin/z/z.sh" >> ~/.zshrc
```


## Flash plugin for Firefox
Go to https://get.adobe.com/flashplayer, download the tar.gz format.
Open a terminal copy and paste the commands below line per line.
```
cd ~/Downloads
gunzip install_flash_player_11_linux.x86_64.tar.gz
tar -xvf install_flash_player_11_linux.x86_64.tar
sudo cp libflashplayer.so /usr/lib/firefox/browser/plugins
```


## Python 3 dependencies
Open a terminal copy and paste the commands below line per line.
```
sudo apt-get install -y python3-dev
```


## Python Package Manager - pip3
Open a terminal copy and paste the commands below line per line.
```
cd ~/Downloads
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
```


## Python Virtual Environment
Open a terminal copy and paste the commands below line per line.
```
pip3 install --user virtualenv
```


## User Python Environment
Open a terminal copy and paste the commands below line per line.
```
~/.local/bin/virtualenv ~/penv
echo "source ~/penv/bin/activate" >> ~/.zshrc
```
Restart the shell.


## Python Packages
Open a terminal copy and paste the commands below line per line.
```
pip install django
pip install Pillow
pip install pep8
```
Append in atom config file, `pep8ExecutePath: /penv/path/`
