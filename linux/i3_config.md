### I3blocks

Follow https://github.com/vivien/i3blocks

Set i3blocks as default status bar

```
sudo vim .config/i3/config

bar {
  status_command SCRIPT_DIR=~/.config/i3blocks i3blocks
}
```

### I3blocks scripts
https://github.com/vivien/i3blocks-contrib

Set desired blocks using (ex)

```
[memory]
command=$SCRIPT_DIR/memory/memory
```
