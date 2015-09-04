# Overrids for theme that works with older versions of tmux
set-option -g status-left '#[fg=white]#[bg=blue] #(hostname) #[default]'
set-window-option -g window-status-current-format "#I #[fg=green](#[default]#[fg=yellow]#W#[default]#[fg=green])#[default]#[fg=blue]|#[default]"
