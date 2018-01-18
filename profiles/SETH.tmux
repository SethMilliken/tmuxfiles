# Create a ready-to-go tmux session
new-session -s 'main'

new-window -n '~' -c  "${HOME}"
send-keys "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'vim' -c  "${HOME}/.vim"
send-keys -t 'vim' "git state" "Enter"
send-keys -t 'vim' "vim +\"let g:vim_app_name='vim'\"" "Enter"

new-window -n 'bin' -c  "${HOME}/bin"
send-keys -t 'bin' "git state" "Enter"

new-window -n '5dactyl' -c  "${HOME}/.pentadactyl"
send-keys -t '5dactyl' "vim +\"let g:vim_app_name='pentadactyl'\"" "Enter"

new-window -n 'brew' -c  "/usr/local/Cellar"
send-keys -t 'brew' "brewup" "Enter"

new-window -n 'mux' -c  "${HOME}/.tmux"
send-keys -t 'mux' "vim +\"let g:vim_app_name='tmux'\"" "Enter"

new-window -n 'wm' -c  "${HOME}"
send-keys -t 'wm' "vim +\"let g:vim_app_name='wm'\"" "Enter"

new-window -n 'backup' -c  "${HOME}"
send-keys -t 'backup' "backup" "Enter"

# vim: ft=tmux
