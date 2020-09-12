#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#[[ $TERM != "screen" ]] && exec tmux
if [ $TERM == "xterm-termite" ]; then
	TERM=screen-256color-bce command tmux
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
