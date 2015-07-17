#     If session name not provided, set it to profile selection.
if-shell "tmux show-environment -g tmux_session_selection 2>/dev/null"                        \
  "run-shell \"tmux set-environment -g tmux_profile_selection '$tmux_session_selection'\""    \
  "run-shell \"tmux set-environment -g tmux_session_selection '$tmux_profile_selection'\""
