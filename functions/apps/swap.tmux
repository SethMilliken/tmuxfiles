# save current app as last; switch to new...uh how is this going to work?
#set -g @current_app "${tmux_function_selection}"
set -g @current_app "foo"
set -g @last_app "foo"
#if-shell '[ "$(tmux show -gv @last_app)" != $(tmux show -gv @current_app ]' set -g @last_app ${tmux_function_selection}
if-shell '[ "$(tmux show -gv @last_app)" == "$(tmux show -gv @current_app)" ]' 'display-message matches' 'run-shell "tmux display-message \"$(tmux show -gv @last_app) $(tmux show -gv @current_app)\""'
#run-shell 'export FOO="$(tmux show -gv @last_app)"; if [[ "show-app" == "show-app" ]]; then true fi'
#run-shell "tmux setenv -g tmux_function_selection $(tmux show -g @last_app)"
#source "${tmux_functions_home}/mode-app-select.tmux"

