#!/bin/bash

if test -e /etc/modprobe.d/blacklist.conf
then
	echo "blacklist amdgpu" >> /etc/modprobe.d/blacklist.conf
else
	touch /etc/modprobe.d/blacklist.conf
	echo "blacklist amdgpu" >> /etc/modprobe.d/blacklist.conf
	
release_version = `uname -r`
drucate -f -v --hostonly -k '/lib/modules/${release_version}/'
				/boot/initramfs-${release_version}.img ${release_version}
reboot
