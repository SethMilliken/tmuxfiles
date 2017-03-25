# Exit from mode

# Restore default key table
switch-client -T root

# Unset variables
set -guq @tmux_mode
set-env -gu tmux_key_table

# Update status line
refresh-client -S
