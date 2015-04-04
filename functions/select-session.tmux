# If a session with the requested name exists,
#   attach to it.
#   Otherwise check for the existence of profile with the requested name.
#     If this profile does exist,
#       prompt user to confirm loading.
#       If user confirms, source the profile to load it.
#     But if this profile does not exist, create a new session with requested name.
if-shell "tmux has -t $tmux_session_selection 2>/dev/null"                           \
  "attach-session -t $tmux_session_selection"                                        \
  'if-shell "test -f \"${tmux_profiles_home}/${tmux_session_selection}.tmux\""       \
    "confirm-before -p                                                               \
      \"load session \\\"${tmux_session_selection}.tmux\\\"? (y/n)\"                 \
      \"source-file \\\"${tmux_profiles_home}/${tmux_session_selection}.tmux\\\"\""  \
    "new-session -s \"${tmux_session_selection}\""'
