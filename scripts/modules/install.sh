#!/bin/sh

CURRENT_DIRECTORY="$(pwd)"

cd ~ || return
# Setup ubuntu development environment

# sudo password
read -sp "[PASSWORD]:" PASSWORD

# Initilize apt pacakges
echo $PASSWORD | sudo -S apt update && sudo apt upgrade -y
sudo apt autoremove

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of initilizing apt pacakges.\n
\e[32;1m=============================================\e[m\n"

# Track the latest git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update && sudo apt upgrade -y

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of tracking the latest git.\n
\e[32;1m=============================================\e[m\n"

# Install common packages
sudo apt install build-essential zip unzip fzf bat tree -y
sudo apt update && sudo apt upgrade -y

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of installing common apt packages.\n
\e[32;1m=============================================\e[m\n"

# Install enhancd
git clone https://github.com/b4b4r07/enhancd && vim enhancd/init.sh && wait source enhancd/init.sh

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of installing enhancd.\n
\e[32;1m=============================================\e[m\n"

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

sudo gpasswd -a $(whoami) docker

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of installing docker.\n
\e[32;1m=============================================\e[m\n"

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of installing asdf core.\n
\e[32;1m=============================================\e[m\n"

cd "${CURRENT_DIRECTORY}" || return
