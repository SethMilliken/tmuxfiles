# Overrides for theme that works with older versions of tmux
set-option -g status-interval 60
set-option -g status-bg black
set-option -g status-fg white
set-option -g status-left-length 60
set-option -g status-right-length 120
set-option -g status-left '#[fg=white]#[bg=blue] #(hostname) #[default]'
set-window-option -g window-status-format "#I #W #[fg=blue]|#[default]"
set-window-option -g window-status-current-format "#I #[fg=green](#[default]#[fg=yellow]#W#[default]#[fg=green])#[default]#[fg=blue]|#[default]"
set-option -g status-right '#[fg=white]%a, %Y-%m-%d, %H:%M [ #[fg=green]#S #[default]]'
