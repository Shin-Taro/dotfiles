#!/bin/sh
CURRENT_DIRECTORY="$(pwd)"
THIS_DIRECTORY="$(dirname "${BASH_SOURCE[0]}")"

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd "${THIS_DIRECTORY}" || return
cd ../../dotfiles || return
for file in .*; do
  if [ "${file}" = "." ] || [ "${file}" = ".." ]; then
    continue
  fi
    ln -s -i "${PWD}/${file}" "${HOME}"
done

cd "${CURRENT_DIRECTORY}" || return
