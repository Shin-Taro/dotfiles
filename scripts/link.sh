#!/bin/sh

dotfiles_root=$(cd $(dirname $0)/.. && pwd)

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ${dotfiles_root}/dotfiles
for file in .*; do
  if [ "${file}" = "." ] || [ "${file}" = ".." ]; then
    continue
  fi
    ln -s ${PWD}/${file} ${HOME}
done
