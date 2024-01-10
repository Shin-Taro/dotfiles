#!/bin/sh

cd ~ || return
mkdir .ssh
mkdir ~/.ssh/Shin-Taro
cd ~/.ssh/Shin-Taro || return

ssh-keygen -t ed25519 -f github
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/Shin-Taro/github

cat ~/.ssh/Shin-Taro/github.pub

touch ~/.ssh/config

curl https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/configs/ssh_config > ~/.ssh/config

cd ~ || return
