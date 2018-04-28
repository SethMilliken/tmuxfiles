# Detect and load platform-, dependency-, and host-specific configuration
# additions and overrides.

# TODO: improve this check; maybe check for features rather than version
# Don't rely on `bc`
# tmux greater than 1.6 (requires `bc`)
#if-shell '(( echo "$(tmux -V | cut -d\ -f 2) > 1.6" | bc -l ))' 'source-file "${tmux_envs_home}/modern-tmux.tmux"'
if-shell '[[ -n "$(tmux -V)" ]]' 'source-file "${tmux_envs_home}/modern-tmux.tmux"'

# Operating System
if-shell '[    "$(uname)"=="Darwin"  ' 'source-file "${tmux_envs_home}/mac.tmux"'
if-shell '[    "$(uname)"=="OpenBSD" ]' 'source-file "${tmux_envs_home}/openbsd.tmux"'
if-shell '[ "$(uname -s)"=="Linux"   ]' 'source-file "${tmux_envs_home}/ubuntu.tmux"'
if-shell '[ "$(uname -m)"=="armv71"  ]' 'source-file "${tmux_envs_home}/zaurus.tmux"'

source-file "${tmux_functions_home}/detect-hostname.tmux"
# vim: ft=tmux
