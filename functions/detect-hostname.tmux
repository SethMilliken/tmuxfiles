# Detect name of host
run-shell "tmux set-environment -g tmux_host $(hostname -s | tr [a-z] [A-Z])"
