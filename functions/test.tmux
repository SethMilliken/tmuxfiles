#display-message ${SCRIPT_RESULT}
display-message "test.tmux function loaded"
#display-message "#{window_id}#{pane_id}"
#unbind-key !
#bind ! run-shell "tmux set-environment -g pane-name-#{pane_id} #{window_name}" \; break-pane
#bind J command-prompt -p "join-pane:" "set-environment -g pane-name-#{pane_id} %1"
#bind J command-prompt -p "join-pane:" "run-shell \"tmux display-message -p -t %1 'pane-id is $(tmux run-shell echo ##{pane_id})'\""
