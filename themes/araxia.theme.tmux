set-option -g status-utf8 on
set-option -g status-interval 60
set-option -g status-bg black
set-option -g status-fg white
set-option -g status-left-length 30
run-shell "tmux set-option -g status-left '#[fg=white]#[bg=blue] $tmux_host #[default]'"

set-option -g display-panes-time 5000
set-option -g display-panes-active-colour yellow
set-option -g display-panes-colour white

set-window-option -g clock-mode-style 24
set-window-option -g clock-mode-colour white

set-window-option -g automatic-rename off
set-window-option -g window-status-current-format "#I #{?window_zoomed_flag,#[fg=red](,}#[fg=green](#[default]#[fg=yellow]#W#[default]#[fg=green])#{?window_zoomed_flag,#[fg=red]),}#[default]#[fg=blue]|#[default]"
set-window-option -g window-status-format "#I #W #[fg=blue]|#[default]"

set-option -g set-titles on
set-option -g set-titles-string "(#I:#P) #W"
set-option -g status-right '#[fg=white]%a, %Y-%m-%d, %H:%M#[default] [ #[fg=green]#S#[default] ]'
