bind-key -T app M setenv -g tmux_function_selection 'mail'     \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app c setenv -g tmux_function_selection 'chat'     \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app f setenv -g tmux_function_selection 'main'     \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app m setenv -g tmux_function_selection 'main'     \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app i setenv -g tmux_function_selection 'todo'     \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app t setenv -g tmux_function_selection 'new-todo' \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app w setenv -g tmux_function_selection 'write'    \; source "${tmux_functions_home}/mode-app-select.tmux"
bind-key -T app x setenv -g tmux_function_selection 'mux'      \; source "${tmux_functions_home}/mode-app-select.tmux"
#bind-key -T app o setenv -g tmux_function_selection 'ua-ios'   \; source "${tmux_functions_home}/mode-app-select.tmux"
#bind-key -T app C setenv -g tmux_function_selection 'chef'     \; source "${tmux_functions_home}/mode-app-select.tmux"

bind-key -T app Escape source-file "${tmux_functions_home}/_mode-unset.tmux"
