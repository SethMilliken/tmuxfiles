# Create a ready-to-go tmux session
new-session -A -s 'standard'

new-window -n '~' -c  "${HOME}"
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'vim' -c  "${HOME}/.vim"
send-keys -t 'vim' "git state" "Enter"
send-keys -t 'vim' "vim +\"let g:vim_app_name='vim'\"" "Enter"

new-window -n 'bin' -c  "${HOME}/bin"
send-keys -t 'bin' "git state" "Enter"

new-window -n '5dactyl' -c  "${HOME}/.pentadactyl"
send-keys -t '5dactyl' "git state" "Enter"

new-window -n 'brew' -c  "${HOME}"
send-keys -t 'brew' "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup" "Enter"

new-window -n 'mux' -c  "${HOME}/.tmux"
send-keys -t 'vim' "vim +\"let g:vim_app_name='tmux'\"" "Enter"

new-window -n 'slate' -c  "${HOME}"
send-keys -t 'slate' "vim +\"let g:vim_app_name='slate'\"" "Enter"


# vim: ft=tmux
