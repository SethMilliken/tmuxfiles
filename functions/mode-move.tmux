# Mode for navigating panes
# Mode stays active until Escape.
set-environment -g tmux_mode_name "PANEMOVE"
source-file "${tmux_functions_home}/_mode-set.tmux"
switch-client -T mm
