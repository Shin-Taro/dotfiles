#!/bin/sh

THIS_DEIRECTORY="$(dirname "${BASH_SOURCE[0]}")"

. "${THIS_DEIRECTORY}/modules/install.sh"
. "${THIS_DEIRECTORY}/modules/link.sh"
. "${HOME}/.bashrc"
. "${THIS_DEIRECTORY}/modules/install_nodejs.sh"

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete setup.\n
\e[32;1m=============================================\e[m\n"
