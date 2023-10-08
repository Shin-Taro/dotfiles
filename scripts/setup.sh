#!/bin/sh

CURRENT_DIRECTORY="$(dirname "${BASH_SOURCE[0]}")"

. "${CURRENT_DIRECTORY}/modules/install.sh"
. "${CURRENT_DIRECTORY}/modules/link.sh"
. "${HOME}/.bashrc"
. "${CURRENT_DIRECTORY}/modules/install_nodejs.sh"

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete setup.\n
\e[32;1m=============================================\e[m\n"
