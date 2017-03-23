# Mode for navigating to different apps
# Operator pending. Mode exits after selection.
set-environment -g tmux_mode_name "NAVIGATE"
source-file "${tmux_functions_home}/_mode-set.tmux"
switch-client -T app
