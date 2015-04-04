# Create a ready-to-go tmux session
new-session -s 'main'

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 3; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}/.vim"
new-window -n 'vim'
send-keys -t 'vim' "git state" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'bin'
send-keys -t 'bin' "git state" "Enter"

set-option default-path "${HOME}/.pentadactyl"
new-window -n 'pentadactyl'
send-keys -t 'pentadactyl' "git state" "Enter"

set-option default-path "${HOME}/sandbox/personal/todo/"
new-window -n 'todo'
send-keys -t 'todo' "vim notable.tst" "Enter"

set-option default-path "${HOME}"
new-window -n 'brew'
send-keys -t 'brew' "brew update && brew upgrade" "Enter"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "vim +\"let g:vim_app_name='tmux'\"" "Enter"

set-option default-path "${HOME}"

set-option -g monitor-activity on

# vim: ft=tmux
