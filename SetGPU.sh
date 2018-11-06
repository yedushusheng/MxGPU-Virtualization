#!/bin/bash

sed -i '/blacklist amdgpu/d' /etc/modprobe.d/blacklist.conf>/dev/null>&1
echo "blacklist amdgpu" >> /etc/modprobe.d/blacklist.conf
	
release_version = `uname -r`
ramfs_version=initramfs-${release_version}.img
drucate -f -v --hostonly -k '/lib/modules/${release_version}/' /boot/ramfs_version ${release_version}
#reboot
