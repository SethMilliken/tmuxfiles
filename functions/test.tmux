# Configuration for experimenting with tmux configuration
display-message "test.tmux function loaded"

#display-message ${SCRIPT_RESULT}
#display-message "#{window_id}#{pane_id}"
#unbind-key !
#bind ! run-shell "tmux set-environment -g pane-name-#{pane_id} #{window_name}" \; break-pane
#bind J command-prompt -p "join-pane:" "set-environment -g pane-name-#{pane_id} %1"
#bind J command-prompt -p "join-pane:" "run-shell \"tmux display-message -p -t %1 'pane-id is $(tmux run-shell echo ##{pane_id})'\""


#display-message ${modern_tmux}
#if-shell "[[ -z \"${modern_tmux}\" ]]" "source-file \"${tmux_themes_home}/simple.theme.tmux\"" "source-file \"${tmux_themes_home}/araxia.theme.tmux\""

#set-environment -g tmux_mode_name "MODETEST"
#source-file "${tmux_functions_home}/_mode-set.tmux"
