export EDITOR="vim"
export BROWSER="firefox"

if [[ "$(tty)" = "/dev/tty1"]]; then
	pgrep i3 || startx
fi
