# 加载gim驱动
modprobe gim

# 卸载gim驱动
modprobe -r gim

# 查看驱动加载情况
lsmod | grep gim
