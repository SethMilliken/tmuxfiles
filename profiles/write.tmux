# Writing session
new-session -s "write" -n '~' -c "${HOME}/sandbox/personal/"

new-window -n 'commit'
send-keys -t 'commit' "pushit"

new-window -n 'write' -c "${HOME}/.weechat_personal/logs/"
split-window -t 'write' -b -v -c  "${HOME}/.weechat/logs/"
split-window -t 'write' -h -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'write.0' "chatail personal irc.bitlbee.tadhg" "Enter"
send-keys -t 'write.1' "chatail ua \\\&reach-team" "Enter"
send-keys -t 'write.2' "vap write" "Enter"
resize-pane -t 'write.2' -Z

new-window -n 'read'
split-window -t 'read' -c "${HOME}/sandbox/personal/zaurus/zlog"
send-keys -t 'read' "vap read" "Enter"

new-window -n 'scratch'
send-keys -t 'scratch' "vap scratch" "Enter"

new-window -n 'qrith'
send-keys -t 'qrith' "vap qrith" "Enter"

new-window -n 'mtg'
send-keys -t 'mtg' "export PS1=mtg$\ ; workon mtg" "Enter"

new-window -n 'chatail'
send-keys -t 'chatail' "chatail" "Enter"

set-option -g monitor-activity on

# vim: ft=tmux
