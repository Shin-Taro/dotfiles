#!/bin/sh

read -p "[HOST_USER_DIRECTORY_NAME]:" HOST_USERNAME

# link Host OS ssh keys
ln -s /mnt/c/Users/$HOST_USERNAME/.ssh ~/.ssh

chmod 777 /mnt/c/Users/$HOST_USERNAME/.ssh && chmod 660 /mnt/c/Users/$HOST_USERNAME/.ssh/*

find ~/.ssh/ -type d -print0 | xargs -0 sudo chmod 777
find ~/.ssh/ -name "*github*" -type f -print0 | xargs -0 sudo chmod 600

tree ~/.ssh/

echo -e "\n\e[32;1m=============================================\e[m\n
\e[32;1m( ﾉ ﾟｰﾟ)ﾉ \e[mThe copying of the ssh key from the Windows OS has been completed.\n
\e[32;1m=============================================\e[m\n"
