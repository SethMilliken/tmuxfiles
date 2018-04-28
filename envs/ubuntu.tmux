#display-message "Welcome to Linux"

if-shell "[ -e /bin/zsh ]" 'set-option -g default-command "zsh"'

# vim: ft=tmux
