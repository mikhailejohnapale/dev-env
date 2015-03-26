# Development Environment Instructions



## Download ubuntu OS
- Click the link below.
- http://releases.ubuntu.com/14.04/ubuntu-14.04-desktop-amd64.iso.torrent
- Using a torrent client open and download the torrent file.



## Unetbootin
### For ubuntu

Open the terminal and paste the command below.

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



## Install Ubuntu OS
### Delete and Partition Disk
- Delete previous partitions in the disk using gparted.
- Ensure only one partition on the disk in gparted.
- Commit to settings and install.


## Install References
- http://www.ubuntu.com/download/desktop/install-ubuntu-desktop



## Install essential programs
- Open a terminal.
- Click and save link below.
- https://raw.githubusercontent.com/janmaghuyop/dev-env/master/install.sh
- Using a text editor open install.sh
- Copy and paste the commands line per line into the terminal and hit enter.



## Register essential accounts
- Open in a new tab the link below.
- https://github.com/janmaghuyop/dev-env/blob/master/accounts.md
- Follow instructions from the link above.



## Contributing
https://github.com/janmaghuyop/dev-env/blob/master/CONTRIBUTING.md
