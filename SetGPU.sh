#!/bin/bash

if test -e /etc/modprobe.d/blacklist.conf
then
	echo "blacklist amdgpu" >> /etc/modprobe.d/blacklist.conf
else
	touch /etc/modprobe.d/blacklist.conf
	echo "blacklist amdgpu" >> /etc/modprobe.d/blacklist.conf
	
release_version = `uname -r`
ramfs_version=initramfs-${release_version}.img
drucate -f -v --hostonly -k '/lib/modules/${release_version}/'
				/boot/ramfs_version ${release_version}
reboot
