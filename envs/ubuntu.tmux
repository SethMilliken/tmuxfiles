#display-message "Welcome to Linux"
#
# Update these for recent tmux version
#bind-key C source-file ${tmux_functions_home}/chat.tmux
bind-key C switch-client -t main
#bind-key C-m source-file ${tmux_functions_home}/mux.tmux
bind-key M source-file ${tmux_functions_home}/mail.tmux
bind-key T source-file ${tmux_functions_home}/new-todo.tmux
bind-key f switch-client -t main
bind-key i switch-client -t lists
#bind-key t source-file ${tmux_functions_home}/todo.tmux
bind-key t source-file ${tmux_functions_home}/new-todo.tmux
bind-key u switch-client -t upkeep
#bind-key w source-file ${tmux_functions_home}/write.tmux
bind-key w switch-client -t write

# vim: ft=tmux
