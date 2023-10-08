#!/bin/sh

CURRENT_DIRECTORY="$(pwd)"

cd ~ || return
# Setup ubuntu development environment

# sudo password
read -sp "[PASSWORD]:" PASSWORD

# Initilize apt pacakges
echo $PASSWORD | sudo -S apt update && sudo apt upgrade -y
sudo apt autoremove

# Track the latest git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update && sudo apt upgrade -y

# Install common packages
sudo apt install build-essential zip unzip fzf bat -y
sudo apt update && sudo apt upgrade -y

# Install enhancd
git clone https://github.com/b4b4r07/enhancd && vim enhancd/init.sh && wait source enhancd/init.sh

# Install docker
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update && sudo apt upgrade -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

cd "${CURRENT_DIRECTORY}" || return
