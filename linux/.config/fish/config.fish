function gss; git status; end
function dockercompose; docker-compose up -d; end
function be; bundle exec; end
function rc; bundle exec rails c; end
function rs; bundle exec rails s; end
alias tmux="TERM=screen-256color-bce command tmux"

# Link: https://medium.com/@HazuliFidastian/run-tmux-automatically-on-fish-shell-2b62622661c7
if not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end
