#!/bin/sh

read -p "[HOST_USERNAME]:" HOST_USERNAME

# link Host OS ssh keys
ln -s /mnt/c/Users/$HOST_USERNAME/.ssh ~/.ssh

chmod 0700 /mnt/c/Users/$HOST_USERNAME/.ssh && chmod 0600 /mnt/c/Users/$HOST_USERNAME/.ssh/*

sudo chmod 777 ~/.ssh/Shin-Taro
sudo chmod 600 ~/.ssh/Shin-Taro/github
