# Development Environment Instructions



## Download ubuntu OS
- Click the link below.
- http://releases.ubuntu.com/14.04/ubuntu-14.04-desktop-amd64.iso.torrent
- Using a torrent client open and download the torrent file.



## Prepare flash drive
- Secure a 2GB or greater capacity flash drive.
- Format the flash drive using FAT32 file system.
- Insert the flash drive to the computer.



## Download and Install Unetbootin
### For ubuntu
Open the terminal and paste the command below.

```
sudo apt-get install -y unetbootin
```
### For windows
- Click the link below.
- http://unetbootin.sourceforge.net/unetbootin-windows-latest.exe
- Wait for the download to finish.



## Make the flash drive bootable
- Click or execute unetbootin.
- Select disk image.
- Press `...` button.
- Find and click the ubuntu os image.
- Press Open button in the dialog box.
- Click Ok button in unetbootin.
- Wait for the process to complete.
- Reboot when prompted.



## BIOS configuration
- Enter BIOS mode before the previous OS will boot.
- Ensure USB boot feature is enabled in BIOS.
- Ensure EUFI feature in boot is enabled in BIOS.
- Save changes and reboot.



## After booting
- Select live mode in the bootloader menu.
- Wait for ubuntu to load competely
- Test all peripheral devices are working.
- Click install icon found in the desktop.



## Ubuntu OS installation
### Delete and Partition Disk
- In `dash` type gparted and click gparted.
- Delete previous partitions in the disk using gparted.
- Ensure only one partition on the disk in gparted.
- Use the references below to install ubuntu.
- Commit to settings and install.
- Restart if prompted.

### References
- http://www.ubuntu.com/download/desktop/install-ubuntu-desktop
- http://www.wikihow.com/Install-Ubuntu-Linux
- http://www.dedoimedo.com/computers/gparted.html



## Programming font
- Open in a new tab http://programmingfonts.org
- Download and install programming font of choice.



## Update and upgrade
Open the terminal and paste the command below.
```
sudo apt-get update
sudo apt-get upgrade -y
```


## Linux commandline commands
Open the following links below and study.
- http://cli.learncodethehardway.org/book
- http://linuxcommand.org
- http://ss64.com/bash
- http://www.commandlinefu.com
- http://www.ee.surrey.ac.uk/Teaching/Unix
- http://ryanstutorials.net/linuxtutorial/commandline.php



## Register essential accounts
- Open in a new tab the link below.
- https://github.com/janmaghuyop/dev-env/blob/master/accounts.md
- Follow instructions from the link above.



## Install essential programs
- Open a terminal.
- Click and save link below.
- https://raw.githubusercontent.com/janmaghuyop/dev-env/master/install.sh
- Using a text editor open install.sh
- Copy and paste the commands line per line into the terminal and hit enter.



## Fork essential repositories
Login to your Github account at https://github.com. Fork the links below.
- https://github.com/janmaghuyop/dev-env
- https://github.com/janmaghuyop/base-repo
- https://github.com/janmaghuyop/ubuntu-tweak
- https://github.com/janmaghuyop/sample-repo
- https://github.com/janmaghuyop/dotfiles
- https://github.com/janmaghuyop/oh-my-zsh



## Contributing
https://github.com/janmaghuyop/dev-env/blob/master/CONTRIBUTING.md
