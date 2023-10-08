#!/bin/sh

read -p "[USER_NAME]:" USER_NAME
read -p "[EMAIL]:" EMAIL

git config --global user.name "${USER_NAME}"
git config --global user.email "${EMAIL}"
git config --global core.editor vim

git config --global --list

echo "( ﾉ ﾟｰﾟ)ﾉ Complete git setting !!"
