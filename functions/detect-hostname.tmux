# Detect name of host
run-shell "tmux set-environment -g tmux_host $(hostname -s | tr [a-z] [A-Z])"

if-shell '[ -n "$(tmux show -gq @tmux_18 2>/dev/null)" ]' 'run-shell "tmux set-option -g @tmux_host $(hostname -s | tr [a-z] [A-Z]) 2>/dev/null"'

# For more primitive environments
run-shell 'tmux set-environment -g SHORTHOST "$(hostname)"'
