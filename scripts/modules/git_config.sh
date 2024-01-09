#!/bin/sh

if [ -n "$ZSH_VERSION" ]; then
  read "USER_NAME?[GIT_USER_NAME]: "
  read "EMAIL?[GIT_EMAIL]: "
else
  read -p "[GIT_USER_NAME]:" USER_NAME
  read -p "[GIT_EMAIL]:" EMAIL
fi



git config --global user.name "${USER_NAME}"
git config --global user.email "${EMAIL}"
git config --global core.editor vim

git config --global --list

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[mSetting up the git configuration has been completed.\n
\e[32;1m=============================================\e[m\n"
