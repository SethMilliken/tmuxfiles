bind-key -T mm h select-pane -L \; switch-client -T mm \; display-message "move-mode"
bind-key -T mm j select-pane -U \; switch-client -T mm \; display-message "move-mode"
bind-key -T mm k select-pane -D \; switch-client -T mm \; display-message "move-mode"
bind-key -T mm l select-pane -R \; switch-client -T mm \; display-message "move-mode"
bind-key -T mm Escape switch-client -T root
switch-client -Tmm ; display-message "move-mode"
