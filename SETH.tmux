# Create a ready-to-go tmux session

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}"
new-window -n 'invalidations'
send-keys -t 'invalidations' "(invalidate -s widget testing && invalidate testing) | tee >(pbcopy)"

set-option default-path "${HOME}/.vim"
new-window -n '.vim'
send-keys -t '.vim' "git state" "Enter"

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
send-keys -t 'code' "ls -al" "Enter"

set-option default-path "${HOME}"
new-window -n 'brew'
send-keys -t 'brew' "brew update && brew upgrade" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'synswitch'
send-keys -t 'synswitch' "synswitch work"

set-option default-path "${HOME}/bin"
new-window -n 'tmux'
send-keys -t 'tmux' "tte" "Enter"

set-option default-path "${HOME}"
new-window -n 'slate'
send-keys -t 'slate' "vim .slate" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'mount_vm'
send-keys -t 'mount_vm' "mount_vm"

set-option default-path "${HOME}"

# Start VMWare Fusion
# ssh odev x 2 windows
# tt
# New iTerm Window

# vim: ft=tmux
