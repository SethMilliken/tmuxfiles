#switch-client -Tapp; display-message "app-mode"
bind-key -tapp C "switch-client -t chef"
bind-key -tapp C-m source-file $HOME/.tmux/functions/mux.tmux
bind-key -tapp Escape "switch-client -T root"
bind-key -tapp M source-file $HOME/.tmux/functions/mail.tmux
bind-key -tapp c source-file $HOME/.tmux/functions/chat.tmux
bind-key -tapp f "switch-client -t main"
bind-key -tapp i source-file $HOME/.tmux/functions/ua-ios.tmux
bind-key -tapp t source-file $HOME/.tmux/functions/todo.tmux
bind-key -tapp u source-file $HOME/.tmux/functions/new-todo.tmux
bind-key -tapp w source-file $HOME/.tmux/functions/write.tmux
