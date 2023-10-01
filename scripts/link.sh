#!/bin/sh

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ~/.dotfiles/dotfiles || exit
for file in .*; do
  if [ "${file}" = "." ] || [ "${file}" = ".." ]; then
    continue
  fi
    ln -s -i ${PWD}/${file} ${HOME}
done
