#!/bin/sh

sudo sh -c "echo 'nameserver 8.8.8.8' > /etc/resolv.conf"
sudo chattr +i /etc/resolv.conf

sudo sh -c "echo '[network]\ngenerateResolvConf = false' >> /etc/wsl.conf"
sudo sh -c "echo '[automount]\noptions = \"metadata\"' >> /etc/wsl.conf"

echo "( ﾉ ﾟｰﾟ)ﾉ The configuration change of WSL2 was successful"
