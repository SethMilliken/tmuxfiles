# Create a ready-to-go tmux session
rename-session 'standard'

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}/.vim"
new-window -n '.vim'
send-keys -t '.vim' "git state" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'bin'
send-keys -t 'bin' "git state" "Enter"

set-option default-path "${HOME}/.pentadactyl"
new-window -n '5dactyl'
send-keys -t '5dactyl' "git state" "Enter"

set-option default-path "${HOME}"
new-window -n 'brew'
send-keys -t 'brew' "brew update && brew upgrade && brew cleanup" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'synswitch'
send-keys -t 'synswitch' "synswitch work"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "tte" "Enter"

set-option default-path "${HOME}"
new-window -n 'slate'
send-keys -t 'slate' "vim .slate.js" "Enter"

# vim: ft=tmux
