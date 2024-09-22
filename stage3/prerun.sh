#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	copy_previous
fi

# disabling ipv6 for now..
sudo bash -c 'echo -e "\nnet.ipv6.conf.all.disable_ipv6 = 1\nnet.ipv6.conf.default.disable_ipv6 = 1\nnet.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf'
sudo sysctl -p
