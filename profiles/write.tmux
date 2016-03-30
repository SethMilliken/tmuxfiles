set-option default-path "${HOME}/sandbox/personal/zaurus/zlog"

new-session -s "write" -n '~'

new-window -n 'commit'
send-keys -t 'commit' "pushit"

new-window -n 'write'
send-keys -t 'write' "vim +\"let g:vim_app_name='write'\"" "Enter"

link-window -s main:2

set-option -g monitor-activity on

# vim: ft=tmux
