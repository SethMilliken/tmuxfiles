#     If session name not provided, set it to profile selection.
if-shell "test -z \"$(tmux show-environment -g tmux_session_selection 2>/dev/null)\""         \
  "run-shell \"tmux set-environment -g tmux_session_selection '$tmux_profile_selection'\""
