# Create a ready-to-go tmux session
new-session -s 'main'

new-window -n '~' -c "${HOME}"
send-keys -t '\~' "git state" "Enter"
send-keys -t '\~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'vim' -c "${HOME}/.vim"
send-keys -t 'vim' "git state" "Enter"

new-window -n 'bin'
send-keys -t 'bin' "git state" "Enter"

new-window -n 'work' -c "${HOME}/sandbox/work/"
send-keys -t 'work' "git state" "Enter"

new-window -n 'code' -c "${HOME}/sandbox/code"

new-window -n 'brew' -c "${HOME}"
send-keys -t 'brew' "brewup" "Enter"

new-window -n 'wm' -c "${HOME}"
send-keys -t 'wm' "vap wm" "Enter"

new-window -n 'read' -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'read' "vap read" "Enter"

new-window -n 'mux' -c "${HOME}/.tmux/"
send-keys -t 'mux' "vap vim" "Enter"

new-window -n '5dactyl' -c "${HOME}/.pentadactyl"
send-keys -t '5dactyl' "vap pentadactyl" "Enter"

new-window -n 'rev-ax' -c "${HOME}"
send-keys -t 'rev-ax' "ssh rev-ax" "Enter"

# vim: ft=tmux
