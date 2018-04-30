# Exit from mode

# Restore default key table
if-shell '[ -n "$(tmux show -gq @tmux_18 2>/dev/null)" ]' 'switch-client -T root'

# Unset variables
if-shell '[ -n "$(tmux show -gq @tmux_18 2>/dev/null)" ]' 'set -guq @tmux_mode'
set-env -gu tmux_key_table

# Update status line
refresh-client -S
