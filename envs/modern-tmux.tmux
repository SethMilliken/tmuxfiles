# Features that require tmux greater than 1.6

# key tables
source-file "${tmux_functions_home}/mode-app.tmux"
source-file "${tmux_functions_home}/mode-move.tmux"

set-environment -g modern_tmux "true"
# vim: ft=tmux
