#!/bin/sh

# git config
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/modules/git_config.sh | bash

# ssh key setting
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/modules/link_ssh_key.sh | bash

# dotfilesをclone
cd "${HOME}" || return
git clone git@github.com:Shin-Taro/dotfiles.git

# setup
# shellcheck source=./dotfiles/scripts/setup.sh
. ./dotfiles/scripts/setup.sh
