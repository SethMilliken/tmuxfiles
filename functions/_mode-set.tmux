# Show mode indicator in status-left
#
# Usage:
# BEFORE
# set-environment -g tmux_mode_name "MODENAME"
# source-file ${tmux_functions_home}/_mode-set.tmux
#
# AFTER
# source-file ${tmux_functions_home}/_mode-unset.tmux

#source-file ${tmux_functions_home}/load-default-theme.tmux
#run-shell "tmux set-environment -g tmux_orig_status_left \"$(tmux show-option -g status-left | sed -re 's/status-left \"(.*)\"/\\1/')\""
#source-file ${tmux_functions_home}/_mode-set-status.tmux
