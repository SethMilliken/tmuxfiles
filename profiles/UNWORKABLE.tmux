# Create a ready-to-go tmux session
new-session -s 'main' -n '~'

send-keys -t '~' "sleep 3; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}"
new-window -n 'mail'
send-keys -t 'mail' "mutt" "Enter"

set-option default-path "${HOME}/.weechat_personal"
new-window -n 'weechat'
split-window -t 'weechat'
split-window -h -t 'weechat.0'
send-keys -t 'weechat.0' "/usr/bin/less +F ${HOME}/.weechat/logs/irc.dev-ua.\\\#ops.weechatlog"
send-keys -t 'weechat.1' "/usr/bin/less +F ${HOME}/.weechat/logs/irc.dev-ua.\\\#\\\#ops.weechatlog"
send-keys -t 'weechat.2' "weechat -d ."
select-layout a061,425x139,0,0[425x7,0,0{212x7,0,0,212x7,213,0},425x131,0,8]

set-option default-path "${HOME}/.weechat/"
new-window -n 'configs'
send-keys -t 'configs' "vim +\"let g:vim_app_name='weechatp'\"" "Enter"

set-option default-path "${HOME}/.vim"
new-window -n 'vim'
send-keys -t 'vim' "vim +\"let g:vim_app_name='vim'\""

set-option default-path "${HOME}/bin"
new-window -n 'bin'

set-option default-path "${HOME}/bin"
new-window -n 'mux'
send-keys -t 'mux' "vim +\"let g:vim_app_name='tmux'\"" "Enter"

set-option default-path "${HOME}"

# vim: ft=tmux
