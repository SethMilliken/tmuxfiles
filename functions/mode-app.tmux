# Mode for navigating to different apps
# Operator pending. Mode exits after selection.
set -g @tmux_mode " NAVIGATE "
set-env -g tmux_key_table "app"
refresh-client -S
#source-file "${tmux_functions_home}/_mode-set.tmux"
switch-client -T app
