#!/bin/sh

# git config
curl -o ~/temp.sh https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/modules/git_config.sh && . ~/temp.sh

# ssh key setting
curl -o ~/temp.sh https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/modules/link_ssh_key.sh && . ~/temp.sh

rm ~/temp.sh

# dotfilesをclone
cd "${HOME}" || return
git clone git@github.com:Shin-Taro/dotfiles.git

# setup
# shellcheck source=./dotfiles/scripts/setup.sh
. ./dotfiles/scripts/setup.sh

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( •̀ ω •́ )y \e[m Complete all setup process. Please reboot your WSL.\n
\e[32;1m=============================================\e[m\n"
