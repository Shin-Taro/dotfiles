#!/bin/sh

# Optimize WSL2 DNS setting
sudo sh -c "echo 'nameserver 8.8.8.8' >> /etc/resolv.conf"
sudo sh -c "echo -e '[network]\ngenerateResolvConf = false' >> /etc/resolv.conf"
