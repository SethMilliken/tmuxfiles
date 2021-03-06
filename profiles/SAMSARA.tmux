# Create a ready-to-go tmux session
new-session -s 'main'

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
send-keys -t 'brew' "brew update && brew upgrade && brew cleanup && brew cask cleanup" "Enter"

new-window -n 'slate' -c "${HOME}"
send-keys -t 'slate' "vim +'let g:vim_app_name=\"slate\"'" "Enter"

new-window -n 'write' -c "${HOME}/sandbox/personal/zaurus/zlog"

new-window -n 'read' -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'read' "vim +Reading" "Enter"

new-window -n 'mux' -c "${HOME}/.tmux/"
send-keys -t 'mux' "vim +'let g:vim_app_name=\"tmux\"'" "Enter"

new-window -n '5dactyl' -c "${HOME}/.pentadactyl"
send-keys -t '5dactyl' "vim +'let g:vim_app_name=\"pentadactyl\"'" "Enter"

#new-window -n 'synswitch' -c "${HOME}/bin"
#send-keys -t 'synswitch' "synswitch work"

#set-option default-path "${HOME}/Library/Application Support/Keymando"
#new-window -n keymando

# vim: ft=tmux
