#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# launch homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of installing homebrew.\n
\e[32;1m=============================================\e[m\n"

# git config
curl -o ~/temp.sh https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/modules/git_config.sh && . ~/temp.sh

rm ~/temp.sh

# dotfilesをclone
cd ~ || return
git clone git@github_Shin-Taro:Shin-Taro/dotfiles.git

cd dotfiles || return

# install homebrew packages
brew bundle

# install enhancd
cd ~ || return
git clone https://github.com/b4b4r07/enhancd && vim enhancd/init.sh && wait . ~/enhancd/init.sh

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete: The section of installing enhancd.\n
\e[32;1m=============================================\e[m\n"

# link dotfiles
. ~/dotfiles/scripts/modules/link.sh

# apply zsh settings
. ~/.zshrc
. ~/.zprofile

# install Node.js
. ~/dotfiles/scripts/modules/install_nodejs.sh

# apply zsh settings
. ~/.zshrc
. ~/.zprofile

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( •̀ ω •́ )y \e[m Complete all setup process. Please reboot your Mac.\n
\e[32;1m=============================================\e[m\n"
