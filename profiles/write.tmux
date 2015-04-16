set-option default-path "${HOME}/sandbox/personal/zaurus/zlog"

new-session -s "write" -n '~'

new-window -n 'commit'
send-keys -t 'commit' "pushit"

new-window -n 'write'
send-keys -t 'write' "vim +\"let g:vim_app_name='write'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/"
new-window -n 'todo'
send-keys -t 'todo' "vim +\"let g:vim_app_name='todo'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/lists/"
new-window -n 'lists'
send-keys -t 'lists' "vim +\"let g:vim_app_name='lists'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/todo/"
new-window -n 'todo'
send-keys -t 'todo' "vim +\"let g:vim_app_name='todo'\"" "Enter"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "tmux link-window -s main:mux" "Enter"

set-option -g monitor-activity on

# vim: ft=tmux
