# Prepare

## Download ubuntu os
```
wget http://releases.ubuntu.com/14.04/ubuntu-14.04-desktop-amd64.iso.torrent
```



## Unetbootin
For ubuntu
```
sudo apt-get install -y unetbootin
```
For windows
```
wget http://unetbootin.sourceforge.net/unetbootin-windows-latest.exe
```

- The files system of the flash drive should be FAT32.
- Execute unetbootin and select image and find the ubuntu image.



## Before booting the computer
- Ensure usb boot feature is enabled in BIOS.
- Ensure EUFI in boot is enabled in BIOS.



## After booting a bootloader will appear
1. Select live mode.
2. Test all peripheral devices if working.
3. Click install icon found in the desktop.



## Follow installation process
- Ensure only one partition on the disk in gparted.
- Commit to settings and install.


## Install essential programs
- Open a terminal
- Using a text editor open install.sh
- Copy and paste commands per program into the terminal