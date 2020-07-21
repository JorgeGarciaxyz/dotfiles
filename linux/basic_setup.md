## Essential stuff


```
pacman -S base-devel
```

### Displays

```
sudo pacman -S xorg-xrandr
```

Control brightness
```
xrandr --output HDMI-1 --brightness 0.8
```

### Bindkeys
```
sudo pacman -S xbindkeys
```

Create config file
```
xbindkeys -d > ~/.xbindkeysrc
```

reload
```
xbindkeys --poll-rc
```

### Vim

Use git
https://www.vim.org/git.php