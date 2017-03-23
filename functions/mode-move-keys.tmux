bind-key -T mm h select-pane -L \; switch-client -T mm
bind-key -T mm j select-pane -U \; switch-client -T mm
bind-key -T mm k select-pane -D \; switch-client -T mm
bind-key -T mm l select-pane -R \; switch-client -T mm

bind-key -T mm Escape source-file "${tmux_functions_home}/_mode-unset.tmux"
