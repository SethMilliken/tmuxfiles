# Map host session to main
if-shell "test \"$(tmux show-environment -g tmux_host | awk -F= '{print $2}')\" = \"$(tmux show-environment -g tmux_session_selection | awk -F= '{print $2}')\""   \
    display-message "match"
    run-shell "echo \"$(tmux show-environment -g tmux_host | awk -F= '{print $2}')\" = \"$(tmux show-environment -g tmux_session_selection | awk -F= '{print $2}')\""
