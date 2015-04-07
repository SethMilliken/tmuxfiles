# Create a ready-to-go tmux session
new-session 'write'

set-option default-path "${HOME}/write/"
new-window -n 'write'
send-keys -t 'write' "vim +Write `date +%Y-%m-index.txt`" "Enter"

new-window -n 'commit'
send-keys -t 'commit' "pushit"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "vim ~/.tmux/nexus.tmux" "Enter"

# vim: ft=tmux
