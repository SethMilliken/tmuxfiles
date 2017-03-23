# Features that require tmux greater than 1.6

# key tables
source-file "${tmux_functions_home}/mode-app-keys.tmux"
source-file "${tmux_functions_home}/mode-move-keys.tmux"

set-environment -g modern_tmux "true"
# vim: ft=tmux
