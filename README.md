# Set up Scripts

## for WSL2
### Process
First, optimize wsl2 configuration.

```
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/wsl_config.sh | bash
```

If you failed curl command, try this.

```
sudo chmod 666 /etc/wsl.conf && sudo sh -c "echo '[boot]\nsystemd=true\n[network]\ngenerateResolvConf = false\n[user]\ndefault=shintaro\n[automount]\noptions = \"metadata\"\n[experimental]\nsparseVhd=true'" > /etc/wsl.conf
```

And reboot wsl2.

```
exit
```

(in PowerShell)

```
wsl --shutdown
```

and restart your distribution

```
sudo sh -c "echo 'nameserver 8.8.8.8' > /etc/resolv.conf" && sudo chattr +i /etc/resolv.conf
```

Finally, use set up scripts.

```
curl -o ~/temp_initialize.sh https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/entry.sh && . ~/temp_initialize.sh && rm ~/temp_initialize.sh
```

### Notes
- Several operations are required during the process.
- Only the ssh key needs to be set on the windows side first.
- Set the alias in `enhancd/init.sh` to `ecd`.
- Restart wsl (update docker execution permissions).

## for Mac
First, set ssh key.
```
curl -o ~/temp_ssh.sh https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/scripts/ssh_keygen.sh && . ~/temp_ssh.sh && rm ~/temp_ssh.sh
```

Then add the ssh key to gtihub.com and run the following to test the ssh connection.
```
$ ssh -T git@github_Shin-Taro
```

Second, install CLT for XCode.
```
xcode-select --install
```

Select "OK" when the popup appears.

Finally, use set up scripts.
```
curl -o ~/temp_initialize.sh https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/entry_mac.sh && . ~/temp_initialize.sh && rm ~/temp_initialize.sh
```

## for Ubuntu

TBD
