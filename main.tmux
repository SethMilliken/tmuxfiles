# automatically update tmux window titles to reflect currently executing command
# requires proper shell configuration
#set-window-option -g automatic-rename on

## more screen-like bindings
# use <C-a> instead of <C-b>
unbind C-b
set-option -g prefix C-a

bind-key C-a last-window \; set -guq @tmux_mode

# allow <C-a>a to pass through an actual <C-a>
bind-key a send-prefix

bind-key A command-prompt "rename-window %%"
unbind c
bind-key c new-window \; command-prompt -p "new window name:" "rename-window %%"
bind-key C new-window \; rename-window new

# additional window navigation bindings
bind-key v split-window -h
bind-key ! break-pane \; command-prompt -p "broken pane name:" "rename-window %%"
bind-key C-i select-pane -t :.+
bind-key Tab select-pane -t :.+
bind-key / list-windows\; command-prompt "swap-window -t '%%'; send-keys 'Enter'"

bind-key g switch-client -l
bind-key C-g switch-client -n

unbind l
bind-key h select-pane -L
bind-key j select-pane -U
bind-key k select-pane -D
bind-key l select-pane -R
bind-key C-l select-pane -R
bind-key C-p last-window

unbind C-o
bind-key r rotate-window
bind-key C-o display-panes

unbind x
bind-key x confirm-before -p "kill pane '#W.#P'? (y/n)" "kill-pane"
bind-key X confirm-before -p "kill or unlink window '#W'? (y/n)" "unlink-window -k"

bind-key '`' resize-pane -t 0 -y 10

# Reload .tmux.conf
bind-key R source-file "${tmux_conf_home}/.tmux.conf" \; display-message "Reloaded tmux configuration."
# Silent reload .tmux.conf (debug)
bind-key C-r source-file "${tmux_conf_home}/.tmux.conf"
# Reload test configuration
bind-key C-t source-file "${tmux_functions_home}/test.tmux"

# Session Management
bind-key Q list-windows\; confirm-before -p "kill-session '#S'? (y/n)" "kill-session; send-keys 'Enter'"
#bind-key S command-prompt -p "Session name:" "set-environment -g tmux_session_selection '%%'; source-file ${tmux_functions_home}/_select-session_pre.tmux"
bind-key S command-prompt -p "Session name:" "set-environment -g tmux_session_selection '%%'; source-file ${tmux_functions_home}/select-session.tmux"
bind-key '$' command-prompt -p "Session name (#S):" "rename-session '%%'"
bind-key W list-windows -a\; command-prompt -p "link window:" "link-window -s '%%'; send-keys 'Enter'"
bind-key P command-prompt -p "Profile to load:" "set-environment -g tmux_profile_selection '%%'; source-file ${tmux_functions_home}/load-profile.tmux"
bind-key F command-prompt -p "Function to load:" "set-environment -g tmux_function_selection '%%'; source-file ${tmux_functions_home}/load-function.tmux"

# set vi keys
set-window-option -g mode-keys vi
bind-key [ copy-mode \; display-message "Copy mode"
bind-key Escape copy-mode\; display-message "Copy mode"
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection
if-shell "test -x /usr/local/bin/reattach-to-user-namespace" 'bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"'

# miscellaneous global options
set-option -g history-limit 50000
set-option -g display-time 1500
set-window-option -g monitor-activity off
set-option -g default-terminal "screen-256color"
set-window-option -g aggressive-resize on
set-option -g detach-on-destroy off
#set-option -g update-environment "SSH_AUTH_SOCK SSH_AGENT_PID FOO"
set-option -g update-environment "DISPLAY SSH_ASKPASS SSH_AUTH_SOCK SSH_AGENT_PID SSH_CONNECTION WINDOWID XAUTHORITY TMUX_CLIENT_NAME SSH_TTY"
set-option -g focus-events on

# Experimental
#bind-key I join-pane -h -p 25 -s main:w.bottom -t :.right
#bind-key T join-pane -d -s :.right -t main:w.bottom

# free bindings
#T, M, u
unbind t
unbind w
unbind i

# modes
unbind s
bind-key s source-file "${tmux_functions_home}/mode-app.tmux"
bind-key m source-file "${tmux_functions_home}/mode-move.tmux"

# renumber windows removing gaps
#bind-key C-l move-window -r

# Zoom pane
bind-key z resize-pane -Z

# Powerline
#source-file "${HOME}/powerline/powerline/bindings/tmux/powerline.conf"

# Load default session
source-file ${tmux_functions_home}/load-default-session.tmux

# Load theme
source-file ${tmux_functions_home}/load-default-theme.tmux

# vim: ft=tmux
