# Create a ready-to-go tmux session
rename-session 'ua'

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}"
new-window -n 'weechat'
send-keys -t 'weechat' "less +F ${HOME}/.weechat_personal/logs/irc.localhost.tadhgo.weechatlog" "Enter"
split-window -t 'weechat'
send-keys -t 'weechat' "weechat" "Enter"
resize-pane -t weechat.0 -U 100 \; resize-pane -t weechat.0 -D 5

set-option default-path "${HOME}/.weechat/"
new-window -n 'configs'
send-keys -t 'configs' "vim weechat.conf irc.conf plugins.conf" "Enter"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "tmux link-window -s main:mux" "Enter"

set-option default-path "${HOME}"

# vim: ft=tmux
