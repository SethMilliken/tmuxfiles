# Create a ready-to-go tmux session

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}/.vim"
new-window -n 'vim'
send-keys -t 'vim' "git state" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'bin'
send-keys -t 'bin' "git state" "Enter"

set-option default-path "${HOME}/.pentadactyl"
new-window -n 'pentadactyl'
send-keys -t 'pentadactyl' "git state" "Enter"

set-option default-path "${HOME}/sandbox/work/"
new-window -n 'work'
send-keys -t 'work' "git state" "Enter"

set-option default-path "${HOME}/sandbox/code"
new-window -n 'code'

set-option default-path "${HOME}"
new-window -n 'brew'
send-keys -t 'brew' "brew update && brew upgrade && brew cleanup" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'synswitch'
send-keys -t 'synswitch' "synswitch work"

set-option default-path "${HOME}/bin"
new-window -n 'mux'
send-keys -t 'mux' "tte" "Enter"

set-option default-path "${HOME}/sandbox/personal/zaurus/zlog"
new-window -n 'write'

#set-option default-path "${HOME}/Library/Application Support/Keymando"
#new-window -n keymando

set-option default-path "${HOME}"

# vim: ft=tmux
