# Create a ready-to-go tmux session
new-session -A -s 'main'

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state"
send-keys -t '~' "sleep 3; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}"
new-window -n 'mail'
send-keys -t 'mail' "mutt" "Enter"

set-option default-path "${HOME}/.weechat_personal"
new-window -n 'weechat'
split-window -t 'weechat'
split-window -h -t 'weechat.0'
send-keys -t 'weechat.0' "/usr/bin/less +F ${HOME}'/.weechat/logs/irc.dev-ua.#ops.weechatlog'"
send-keys -t 'weechat.1' "/usr/bin/less +F ${HOME}'/.weechat/logs/irc.dev-ua.##ops.weechatlog'"
send-keys -t 'weechat.2' "weechat -d ."
select-layout a061,425x139,0,0[425x7,0,0{212x7,0,0,212x7,213,0},425x131,0,8]

set-option default-path "${HOME}/.weechat/"
new-window -n 'configs'
send-keys -t 'configs' "vim +\"let g:vim_app_name='weechatp'\"" "Enter"

set-option default-path "${HOME}/.vim"
new-window -n 'vim'
send-keys -t 'vim' "git state"

set-option default-path "${HOME}/bin"
new-window -n 'bin'
send-keys -t 'bin' "git state"

set-option default-path "${HOME}/sandbox/personal/zaurus/zlog/"
new-window -n 'write'
send-keys -t 'write' "vim +\"let g:vim_app_name='write'\""

set-option default-path "${HOME}/ax/"
new-window -n 'notes'
send-keys -t 'notes' "vim +\"let g:vim_app_name='notes'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/lists/"
new-window -n 'lists'
send-keys -t 'lists' "vim +\"let g:vim_app_name='lists'\"" "Enter"

set-option default-path "${HOME}/sandbox/personal/todo/"
new-window -n 'todo'
send-keys -t 'todo' "vim +\"let g:vim_app_name='todo'\"" "Enter"

set-option default-path "/usr/ports"
new-window -n 'ports'
send-keys -t 'ports' "export PKG_PATH=ftp://mirror.planetunix.net/pub/OpenBSD/5.4/packages/`machine -a`/" "Enter"
send-keys -t 'ports' "make search key=binutil | grep Port"
split-window -t 'ports' -h
send-keys -t 'ports' "export PKG_PATH=ftp://mirror.planetunix.net/pub/OpenBSD/5.4/packages/`machine -a`/" "Enter"
send-keys -t 'ports' "sudo pkg_add -i -z -U PACKAGE"

# sudo pkg_delete -i packagename

set-option default-path "${HOME}/bin"
new-window -n 'mux'
send-keys -t 'mux' "vim +\"let g:vim_app_name='tmux'\"" "Enter"

set-option default-path "${HOME}"

# vim: ft=tmux
