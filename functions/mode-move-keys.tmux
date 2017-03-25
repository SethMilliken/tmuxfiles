set-env -g tmux_key_table "mm"
source "${tmux_functions_home}/_set-dead-keys.tmux"
set-env -gu tmux_key_table

bind-key -T mm h select-pane -L \; switch-client -T mm
bind-key -T mm j select-pane -U \; switch-client -T mm
bind-key -T mm k select-pane -D \; switch-client -T mm
bind-key -T mm l select-pane -R \; switch-client -T mm
