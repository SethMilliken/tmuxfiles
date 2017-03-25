# Detect name of host
run-shell "tmux set-environment -g tmux_host $(hostname -s | tr [a-z] [A-Z])"

run-shell "tmux set-option -g @tmux_host $(hostname -s | tr [a-z] [A-Z])"

# For more primitive environments
run-shell 'tmux set-environment -g SHORTHOST "$(hostname)"'
