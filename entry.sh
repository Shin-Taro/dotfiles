#!/bin/sh

# git config
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/git_config.sh?token=GHSAT0AAAAAACII5A2F333NQ2FPPGVBBOPOZI5NV7Q | bash

# ssh key setting
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/link_ssh_key.sh?token=GHSAT0AAAAAACII5A2FM7MPCFI2XLWFW2YKZI5NXDA | bash

# dotfilesをclone
cd "${HOME}" || return
git clone git@github.com:Shin-Taro/dotfiles.git

# setup
# shellcheck source=./dotfiles/scripts/setup.sh
. ./dotfiles/scripts/setup.sh
