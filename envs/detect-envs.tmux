# Detect and load platform-, dependency-, and host-specific configuration
# additions and overrides.

# Check for tmux greater than 1.6 using only vanilla *nix utilties;
# Early versions of tmux did not support the -V flag, so prepend 1
# to ensure that `-gt` still works when `tmux -V 2>/dev/null` returns
# an empty string for those versions.
if-shell '[ "$(echo 1$(tmux -V 2>/dev/null) | sed -e \'s/tmux //\' | sed -e \'s/\.//\') -gt 116 ]' 'source-file "${tmux_envs_home}/modern-tmux.tmux"'

# Operating System
if-shell '[    "$(uname)"=="Darwin"  ' 'source-file "${tmux_envs_home}/mac.tmux"'
if-shell '[    "$(uname)"=="OpenBSD" ]' 'source-file "${tmux_envs_home}/openbsd.tmux"'
if-shell '[ "$(uname -s)"=="Linux"   ]' 'source-file "${tmux_envs_home}/ubuntu.tmux"'
if-shell '[ "$(uname -m)"=="armv71"  ]' 'source-file "${tmux_envs_home}/zaurus.tmux"'

source-file "${tmux_functions_home}/detect-hostname.tmux"

# vim: ft=tmux
