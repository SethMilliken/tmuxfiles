set-option default-path "${HOME}/sandbox/personal/zaurus/zlog"

new-session -s "write" -n '~'

new-window -n 'commit'
send-keys -t 'commit' "pushit"

new-window -n 'write'
send-keys -t 'write' "vim +\"let g:vim_app_name='write'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/lists/"
new-window -n 'lists'
send-keys -t 'lists' "vim +\"let g:vim_app_name='lists'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/todo/"
new-window -n 'todo'
send-keys -t 'todo' "vim +\"let g:vim_app_name='todo'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/writing/missives/"
new-window -n 'missives'
send-keys -t 'missives' "vim +\"let g:vim_app_name='missives'\"" "Enter"

set-option -g monitor-activity on

# vim: ft=tmux
