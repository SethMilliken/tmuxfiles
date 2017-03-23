# Mac OS X
# hack to be able to use pasteboard https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
if-shell "test -x /usr/local/bin/reattach-to-user-namespace" 'set-option -g default-command "reattach-to-user-namespace -l zsh"'
# sync tmux buffer to Mac OS X pasteboard
# requires ~/.ssh/config host entry for pasteboard-host
bind-key y run-shell "~/bin/sync-pasteboard out"\; display-message "tmux buffer copied to pasteboard-host pasteboard"
bind-key Y run-shell "~/bin/sync-pasteboard in"\; display-message "pasteboard-host pasteboard copied to tmux buffer"

# vim: ft=tmux
