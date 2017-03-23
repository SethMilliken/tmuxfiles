# Detect and load platform-, dependency-, and host-specific configuration
# additions and overrides.

# tmux greater than 1.6
if-shell '[[ "$(tmux -V | cut -d\ -f 2)" -gt "1.6" ]]' 'source-file "${tmux_envs_home}/modern-tmux.tmux"'

# Operating System
if-shell "[[ $(uname)    == "Darwin"  ]]" 'source-file "${tmux_envs_home}/mac.tmux"'
if-shell "[[ $(uname)    == "OpenBSD" ]]" 'source-file "${tmux_envs_home}/openbsd.tmux"'
if-shell "[[ $(uname -s) == "Linux"   ]]" 'source-file "${tmux_envs_home}/ubuntu.tmux"'
if-shell "[[ $(uname -m) == "armv71"  ]]" 'source-file "${tmux_envs_home}/zaurus.tmux"'

source-file "${tmux_functions_home}/detect-hostname.tmux"

# vim: ft=tmux