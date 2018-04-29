# Create default session for UA tasks
new-session -s "ua" -n '~' -c "${HOME}"
send-keys -t '~' "sleep 2; tmux set-option -g monitor-activity on; clear" "Enter"

new-window -n 'weechat' -c "${HOME}/.weechat"
send-keys -t 'weechat' "chatail personal irc.bitlbee.tadhg" "Enter"
split-window -t 'weechat'
send-keys -t 'weechat' "weechat"
resize-pane -t weechat.0 -y 10

new-window -n 'configs' -c "${HOME}/.weechat/"
send-keys -t 'configs' "vap weechat" "Enter"

new-window -n 'logs' -c "${HOME}/.weechat/logs/"
send-keys -t 'logs' "chatail ua \\\&reach-team" "Enter"
split-window -t 'logs'
send-keys -t 'logs' "chatail ua \\\#channel-reach" "Enter"

# vim: ft=tmux
