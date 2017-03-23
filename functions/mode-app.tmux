# Activate with: `switch-client -Tapp; display-message "app-mode"`
# Operator pending. Mode exits after selection.
bind-key -Tapp C switch-client -t chef
bind-key -Tapp C-m source-file ${tmux_functions_home}/mux.tmux
bind-key -Tapp Escape switch-client -Troot
bind-key -Tapp M source-file ${tmux_functions_home}/mail.tmux
bind-key -Tapp c source-file ${tmux_functions_home}/chat.tmux
bind-key -Tapp f switch-client -t main
bind-key -Tapp i source-file ${tmux_functions_home}/ua-ios.tmux
bind-key -Tapp t source-file ${tmux_functions_home}/todo.tmux
bind-key -Tapp u source-file ${tmux_functions_home}/new-todo.tmux
bind-key -Tapp w source-file ${tmux_functions_home}/write.tmux
