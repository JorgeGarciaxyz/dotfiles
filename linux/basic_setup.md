## Essential stuff


```
pacman -S base-devel
```

### Run on startup

Add the next line to `~/.xinitrc`

```
/path_to_this_repo/linux/xinitrc_commands.sh
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

```
set EDITOR vim
export EDITOR
```

### Audio
Pulse audio https://wiki.archlinux.org/index.php/PulseAudio

Install
```
sudo pacman -S pulseaudio
```

#### One to rule them all

Alsa utils https://www.archlinux.org/packages/extra/x86_64/alsa-utils/
```
sudo pacman -S alsa-utils
alsamixer
```

GUI option
```
sudo pacman -S pavucontrol
```

Other GUI https://aur.archlinux.org/packages/gnome-alsamixer/

Audio shortcuts 

Copy this to `.xbindkeysrc`
```
"amixer -D pulse sset Master 5%- && pkill -RTMIN+10 i3blocks"
Shift + F11

"amixer -D pulse sset Master 5%+ && pkill -RTMIN+10 i3blocks"
Shift + F12
```

### Nightfilter

Check https://wiki.archlinux.org/index.php/Redshift

For "basic" filter with low brightness use
```
redshift -P -O 3500K -b 0.9
```

wip the auto filter

#### Gnome Stuff (if using)

Disable show menu bar

```
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
```

# Arch from Scratch == pain in the ass (but the 180mb to boot everything with i3 is nice AF)

### Setup the audio
I try so many things that I dont know which method was the correct one. A combination of alsa, pulse audio and SOF
https://www.archlinux.org/packages/extra/any/sof-firmware/

Remember to reboot the PC after installing this

### cant start Startx

This bug was caused because I modified my `.bashrc` to start fish and fish would start `tmux` thus making impossible to start `startx` (something related with permissions IDK.

Fix:
- Remove auto start fish from `.bashrc`
- Don't set termite as the default terminal, set only as the i3 default terminal
- on `.bashrc` start tmux ONLY if the current terminal is termite
- Start fish on tmux

Bashrc snippet (I'll add it later)
```bash
if [ $TERM == "xterm-termite" ]; then
        tmux
fi
```
