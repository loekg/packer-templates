#!/bin/bash

echo "Update packages"
yum -y update

echo "installing cloud-set-guest-password"
chmod +x /etc/init.d/cloud-set-guest-password
chkconfig --add cloud-set-guest-password

echo "installing cloud-set-guest-sshkey"
chmod +x /etc/init.d/cloud-set-guest-sshkey
chkconfig --add cloud-set-guest-sshkey

echo "Set noatime option"
sed -i '0,/defaults/{s/defaults/defaults,noatime/g}' /etc/fstab