#!/bin/sh

CURRENT_DIRECTORY="$(dirname "${BASH_SOURCE[0]}")"

. "${CURRENT_DIRECTORY}/modules/install.sh"
. "${CURRENT_DIRECTORY}/modules/link.sh"
. "${HOME}/.bashrc"
. "${CURRENT_DIRECTORY}/modules/install_nodejs.sh"

echo "( ﾉ ﾟｰﾟ)ﾉ Complete setup !!"
