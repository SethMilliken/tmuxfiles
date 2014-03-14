# Create a ready-to-go tmux session
rename-session 'work'

new-window -n '~' -c "${HOME}"
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'vim' -c "${HOME}/.vim"
send-keys -t 'vim' "git state" "Enter"

new-window -n 'bin' -c "${HOME}/bin"
send-keys -t 'bin' "git state" "Enter"

new-window -n 'work' -c "${HOME}/sandbox/work/"
send-keys -t 'work' "git state" "Enter"

#new-window -n 'code' -c "${HOME}/sandbox/code"

new-window -n 'apt-get' -c "${HOME}"
send-keys -t 'apt-get' "sudo apt-get update && sudo apt-get dist-upgrade"

new-window -n 'awe' -c "${HOME}"
send-keys -t 'awe' "vim ~/.config/awesome/rc.lua" "Enter"

#new-window -n 'write' -c "${HOME}/sandbox/personal/zaurus/zlog"

#new-window -n 'read' -c "${HOME}/sandbox/personal/zaurus/zlog"
#send-keys -t 'read' "vim +Reading" "Enter"

new-window -n 'mux' -c "${HOME}/.tmux"
send-keys -t 'mux' "vim ~/.tmux/pix.tmux" "Enter"
#send-keys -t 'mux' "tte" "Enter"

new-window -n '5dactyl' -c "${HOME}/.pentadactyl"
send-keys -t '5dactyl' "git state" "Enter"

# vim: ft=screen
