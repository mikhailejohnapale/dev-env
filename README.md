# Development Environment Instructions



## Download ubuntu OS
- Click the link below.
- http://releases.ubuntu.com/14.04/ubuntu-14.04-desktop-amd64.iso.torrent
- Using a torrent client open and download the torrent file.



## Unetbootin
### For ubuntu

open the terminal and paste the code below.

```
sudo apt-get install -y unetbootin
```

### For windows
- Click the link below.
- http://unetbootin.sourceforge.net/unetbootin-windows-latest.exe
- The file system of the flash drive should be FAT32.
- Execute unetbootin and select image and find the ubuntu image.
- Click Ok, If prompted proceed anyway.



## Before booting the computer
- Ensure usb boot feature is enabled in BIOS.
- Ensure EUFI feature in boot is enabled in BIOS.



## After booting a bootloader will appear
- Select live mode.
- Test all peripheral devices is working.
- Click install icon found in the desktop.



## Delete and Partition Disk
- Delete previous partitions in the disk using gparted.
- Ensure only one partition on the disk in gparted.
- Commit to settings and install.



## Install essential programs
- Open a terminal.
- Using a text editor open install.sh
- Copy and paste commands per program into the terminal and hit enter.