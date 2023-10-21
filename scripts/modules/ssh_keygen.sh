#!/bin/sh

cd ~/.ssh/ || return
mkdir Shin-Taro
cd Shin-Taro || return

read -p "[EMAIL]:" EMAIL

ssh-keygen -t ed25519 -C "${EMAIL}" -f github
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/Shin-Taro/github

cat ~/.ssh/Shin-Taro/github.pub

cd ~ || return
