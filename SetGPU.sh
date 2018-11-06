#!/bin/bash

sed -i '/blacklist amdgpu/d' /etc/modprobe.d/blacklist.conf>/dev/null>&1
echo "blacklist amdgpu" >> /etc/modprobe.d/blacklist.conf
	
release_version = `uname -r`
ramfs_version=initramfs-${release_version}.img
drucate -f -v --hostonly -k '/lib/modules/${release_version}/' /boot/ramfs_version ${release_version}

echo -e '#!/bin/sh\n/usr/sbin/modinfo -F filename gim' > /dev/null 2&>1 \nif [$? -eq 0]; then \n
/sbin/modprobe gim \nfi' > /etc/sysconfig/modules/gim_modules
chmod +x /etc/sysconfig/modules/gim_modules

#reboot --unsafe
