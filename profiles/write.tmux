# Writing session
new-session -s "write" -n '~' -c "${HOME}/sandbox/personal/"

new-window -n 'commit'
send-keys -t 'commit' "pushit"

new-window -n 'write'
split-window -t 'write' -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'write.0' "/bin/less +F ${HOME}/.weechat_personal/logs/irc.bitlbee.tadhg.weechatlog" "Enter"
send-keys -t 'write.1' "vap write" "Enter"
resize-pane -t 'write.1' -Z

new-window -n 'read'
split-window -t 'read' -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'read' "vap read" "Enter"

new-window -n 'scratch'
send-keys -t 'scratch' "vap scratch" "Enter"

new-window -n 'qrith'
send-keys -t 'qrith' "vap qrith" "Enter"

set-option -g monitor-activity on

# vim: ft=tmux
