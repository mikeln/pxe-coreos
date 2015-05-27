#!/bin/bash
#
# links up items in the tftpboot directory
#
sudo cp -R coreos-installer /private/tftpboot/coreos-installer
#
# copy and create  coreos install...
#
cd /private/tftpboot

sudo mkdir coreos-alpha

sudo ln -s coreos-installer/pxelinux.cfg pxelinux.cfg
#
# only needed for vga
sudo ln -s coreos-installer/boot-screens/ldlinux.c32 ldlinux.c32
#
# assumes a debian file...
sudo ln -s debian-installer/amd64/pxelinux.0 pxelinux.0
