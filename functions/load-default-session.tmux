run-shell "tmux set-environment -g tmux_session_selection \"main\""
run-shell "tmux set-environment -g tmux_profile_selection \"${tmux_host}\""
source-file ${tmux_functions_home}/load-profile.tmux
