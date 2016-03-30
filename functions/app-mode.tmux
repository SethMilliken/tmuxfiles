bind-key -T app c source-file $HOME/.tmux/functions/chat.tmux
bind-key -T app t source-file $HOME/.tmux/functions/todo.tmux
bind-key -T app M source-file $HOME/.tmux/functions/mail.tmux
bind-key -T app u source-file $HOME/.tmux/functions/new-todo.tmux
bind-key -T app i source-file $HOME/.tmux/functions/ua-ios.tmux
bind-key -T app w switch-client -t write
bind-key -T app f switch-client -t main
bind-key -T app C switch-client -t chef
bind-key -T app Escape switch-client -T root
switch-client -Tapp; display-message "app-mode"
