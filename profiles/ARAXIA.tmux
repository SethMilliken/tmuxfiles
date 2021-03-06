# Create default session for host
new-session -s 'main' -n '~' -c "${HOME}"
send-keys -t '~' "sleep 2; tmux set-option -g monitor-activity on; clear" "Enter"

new-window -n 'mail' -c "${HOME}"
send-keys -t 'mail' "mutt" "Enter"

new-window -n 'weechat' -c "${HOME}/.weechat_personal"
split-window -t 'weechat'
split-window -h -t 'weechat.0'
send-keys -t 'weechat.0' "chatail ua \\\#channel-reach" "Enter"
send-keys -t 'weechat.1' "chatail ua \\\&reach-team" "Enter"
send-keys -t 'weechat.2' "weechat -d ."
select-layout a061,425x139,0,0[425x7,0,0{212x7,0,0,212x7,213,0},425x131,0,8]

new-window -n 'configs' -c "${HOME}/.weechat_personal"
send-keys -t 'configs' "vap weechatp" "Enter"

new-window -n 'vim' -c "${HOME}/.vim"
send-keys -t 'vim' "vap vim"

new-window -n 'install' -c "${HOME}/bin"
send-keys -t 'install' "sudo apt-get install "

new-window -n 'bin' -c "${HOME}/bin"

new-window -n 'git' -c "${HOME}/git"

new-window -n 'mux' -c "${HOME}/.tmux"
send-keys -t 'mux' "vap tmux" "Enter"

# vim: ft=tmux
