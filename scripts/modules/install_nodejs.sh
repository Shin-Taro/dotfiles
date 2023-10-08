#!/bin/sh

# Install Node.js by asdf and enable corepack for yarn or npm
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
corepack enable
asdf reshim nodejs

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[m Complete nodejs setup.\n
\e[32;1m=============================================\e[m\n"
