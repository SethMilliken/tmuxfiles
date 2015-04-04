# Create a ready-to-go tmux session
set-option default-path "${HOME}"

new-session -s "main" -n '~'
send-keys -t '~' "git state"

set-option default-path "${HOME}/.vim"
new-window -n 'vim'
send-keys -t 'vim' "git state"

set-option default-path "${HOME}/bin"
new-window -n 'bin'
send-keys -t 'bin' "git state"

set-option default-path "${HOME}/.pentadactyl"
new-window -n 'pentadactyl'
send-keys -t 'pentadactyl' "git state"

set-option default-path "${HOME}/sandbox/personal/todo/"
new-window -n 'todo'
send-keys -t 'todo' "vim browse.tst"

set-option default-path "${HOME}"
new-window -n 'brew'
send-keys -t 'brew' "brew update && brew upgrade && brew cleanup"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "vim +\"let g:vim_app_name='tmux'\"" "Enter"

set-option default-path "${HOME}"

set-option -g monitor-activity on

# vim: ft=tmux
