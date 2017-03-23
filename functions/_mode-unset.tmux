# Exit from mode

# Restore default key table
switch-client -T root

# Unset variables
set-environment -g -u tmux_mode_name
set-environment -g -u tmux_orig_status_left

# Reset theme
source-file ${tmux_functions_home}/load-default-theme.tmux
