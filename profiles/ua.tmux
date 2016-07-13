# Create a ready-to-go tmux session
set-option default-path "${HOME}"

new-session -s "ua" -n '~'

set-option default-path "${HOME}"
new-window -n 'weechat'
send-keys -t 'weechat' "/usr/bin/less +F ${HOME}/.weechat_personal/logs/irc.bitlbee.tadhg.weechatlog" "Enter"
split-window -t 'weechat'
send-keys -t 'weechat' "weechat"
resize-pane -t weechat.0 -y 10

set-option default-path "${HOME}/.weechat/"
new-window -n 'configs'
send-keys -t 'configs' "vim +\"let g:vim_app_name='weechat'\"" "Enter"


#set-option default-path "${HOME}/.tmux"
#new-window -n 'mux'
#send-keys -t 'mux' "tmux link-window -s main:mux" "Enter"

set-option default-path "${HOME}/.weechat/logs/"
new-window -n 'logs'
#send-keys -t 'logs' "less irc.dev-ua.\\\#\\\#ops.weechatlog" "Enter"
send-keys -t 'logs' "less irc.slac-ua.\\\#wallet-eng.weechatlog" "Enter"
split-window -t 'logs'
send-keys -t 'logs' "less irc.dev-ua.\\\#ops.weechatlog" "Enter"

set-option default-path "${HOME}"

set-option -g monitor-activity on

# vim: ft=tmux
