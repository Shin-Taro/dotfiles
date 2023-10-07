# Set up Scripts

## for WSL2

First, optimize wsl2 configuration.

```
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/wsl_config.sh?token=GHSAT0AAAAAACII5A2F3RNBQNJCJNWMWPP4ZI5OMIQ | bash
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
curl -s https://raw.githubusercontent.com/Shin-Taro/dotfiles/develop/entry.sh?token=GHSAT0AAAAAACII5A2EDZ5VNFJDOWU363VUZI5OOMA | bash
```
