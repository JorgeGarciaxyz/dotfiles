## Essential stuff


```
pacman -S base-devel
```

### Displays

```
sudo pacman -S xorg-xrandr
```

Scripts for xrandr
https://github.com/philippnormann/xrandr-brightness-script

```
cd
cd Software
git clone https://github.com/philippnormann/xrandr-brightness-script.git
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

Add to config file
```
./Software/xrandr-brightness-script/brightness.sh - HDMI-1
Shift + F8

./Software/xrandr-brightness-script/brightness.sh + HDMI-1
Shift + F9
```

reload
```
xbindkeys --poll-rc
```

### Vim

Use git
https://www.vim.org/git.php
