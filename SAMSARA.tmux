# Create a ready-to-go tmux session

new-window -n '~' -c "${HOME}"
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'vim' -c "${HOME}/.vim"
send-keys -t 'vim' "git state" "Enter"

new-window -n 'bin'
send-keys -t 'bin' "git state" "Enter"

new-window -n 'work' -c "${HOME}/sandbox/work/"
send-keys -t 'work' "git state" "Enter"

new-window -n 'code' -c "${HOME}/sandbox/code"

new-window -n 'brew' -c "${HOME}"
send-keys -t 'brew' "brew update && brew upgrade && brew cleanup" "Enter"

new-window -n 'slate' -c "${HOME}"
send-keys -t 'slate' "vim .slate.js" "Enter"

new-window -n 'write' -c "${HOME}/sandbox/personal/zaurus/zlog"

new-window -n 'read' -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'read' "vim +Reading" "Enter"

new-window -n 'mux' -c "${HOME}/bin"
send-keys -t 'mux' "tte" "Enter"

new-window -n '5dactyl' -c "${HOME}/.pentadactyl"
send-keys -t '5dactyl' "git state" "Enter"

#new-window -n 'synswitch' -c "${HOME}/bin"
#send-keys -t 'synswitch' "synswitch work"

#set-option default-path "${HOME}/Library/Application Support/Keymando"
#new-window -n keymando

# vim: ft=tmux
