# Set up Scripts

## for WSL2

First, optimize wsl2 configuration.

```
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/wsl_config.sh | bash
```

Second, reboot wsl2.

```
exit
```

(in PowerShell)

```
wsl --shutdown
```

and restart your distribution

Finally, use set up scripts.

```
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/entry.sh | bash
```
