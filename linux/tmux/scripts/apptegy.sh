#!/bin/bash

SESSION="work"

# 1. First you check if a tmux session exists with a given name.
tmux has-session -t=$SESSION 2> /dev/null

# 2. Create the session if it doesn't exists.
if [[ $? -ne 0 ]]; then
  TMUX='' tmux new-session -d -s "$SESSION"

  tmux rename-window -t 0 'ts'
  tmux send-keys -t $SESSION:0 "cd ~/Work/thrillshare" C-m "clear" C-m

  tmux new-window -t $SESSION:1 -n 'ts vim'
  tmux send-keys -t $SESSION:1 "cd ~/Work/thrillshare" C-m "clear" C-m

  tmux new-window -t $SESSION:2 -n 'forms'
  tmux send-keys -t $SESSION:2 "cd ~/Work/forms" C-m "clear" C-m

  tmux new-window -t $SESSION:3 -n 'forms vim'
  tmux send-keys -t $SESSION:3 "cd ~/Work/forms" C-m "clear" C-m

  tmux new-window -t $SESSION:4 -n 'shell'
fi

# 3. Attach if outside of tmux, switch if you're in tmux.
if [[ -z "$TMUX" ]]; then
  tmux attach -t "$SESSION"
else
  tmux switch-client -t "$SESSION"
fi
