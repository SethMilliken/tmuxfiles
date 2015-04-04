# If a session with the requested profile name exists,
#   attach to it.
#   Otherwise check for the existence of profile file with the requested name.
#     If this profile exists, source the file to load it.
#     But if this file does not exist, display an error message.
if-shell "tmux has -t $tmux_profile_selection 2>/dev/null"                           \
  "attach-session -t $tmux_profile_selection"                                        \
  'if-shell "test -f \"${tmux_profiles_home}/${tmux_profile_selection}.tmux\""       \
    "source-file \"${tmux_profiles_home}/${tmux_profile_selection}.tmux\""           \
    "display-message \"profile not found: \\\"${tmux_profiles_home}/${tmux_profile_selection}.tmux\\\"\""'
