#!/bin/sh

read -p "[HOST_USERNAME]:" HOST_USERNAME

# link Host OS ssh keys
ln -s /mnt/c/Users/$HOST_USERNAME/.ssh ~/.ssh

chmod 777 /mnt/c/Users/$HOST_USERNAME/.ssh && chmod 660 /mnt/c/Users/$HOST_USERNAME/.ssh/*

sudo chmod 777 ~/.ssh/Shin-Taro
sudo chmod 600 ~/.ssh/Shin-Taro/github
