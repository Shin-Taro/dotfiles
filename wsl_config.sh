#!/bin/sh

sudo sh -c "echo 'nameserver 8.8.8.8' > /etc/resolv.conf"
sudo chattr +i /etc/resolv.conf

sudo sh -c "echo '[network]\ngenerateResolvConf = false' > /etc/wsl.conf"
sudo sh -c "echo '[automount]\noptions = \"metadata\"' >> /etc/wsl.conf"
sudo sh -c "echo '[boot]\nsystemd=true' >> /etc/wsl.conf"
sudo sh -c "echo '[user]\ndefault=shintaro' >> /etc/wsl.conf"
sudo sh -C "echo '[experimental]\nsparseVhd=true' >> /etc/wsl.conf"

echo "( ﾉ ﾟｰﾟ)ﾉ The configuration change of WSL2 was successful"
