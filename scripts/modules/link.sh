#!/bin/sh
CURRENT_DIRECTORY="$(pwd)"

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ~/dotfiles/dotfiles || return
for file in .*; do
  if [ "${file}" = "." ] || [ "${file}" = ".." ]; then
    continue
  fi
    ln -s -i "${PWD}/${file}" "${HOME}"
done

# user home直下のファイルの内、dotfilesにリンクされているファイルのみ表示
find ~/ -maxdepth 1 -type l -lname "${PWD}*"| while read file; do echo -e "\n${file}"; done

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Linking dotfiles has been complete.\n
\e[32;1m=============================================\e[m\n"

cd "${CURRENT_DIRECTORY}" || return
