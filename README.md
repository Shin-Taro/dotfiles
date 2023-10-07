# Set up Scripts

## for WSL2

First, optimize wsl2 configuration.

```
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/wsl_config.sh | bash
```

If you failed curl command, try this.

```
chmod 666 /etc/wsl.conf && sudo sh -c "echo '[network]\ngenerateResolvConf = false\n[automount]\noptions = \"metadata\"'" >> /etc/wsl.conf
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

## for Ubuntu

TBD
