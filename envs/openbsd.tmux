#display-message "this is OpenBSD"

# key settings since unworkable tmux is too old to support some of the defaults
bind-key C source-file $HOME/.tmux/functions/chat.tmux
bind-key C-m source-file $HOME/.tmux/functions/mux.tmux
bind-key M source-file $HOME/.tmux/functions/mail.tmux
bind-key T source-file $HOME/.tmux/functions/new-todo.tmux
bind-key f switch-client -t main
bind-key i switch-client -t lists
bind-key t source-file $HOME/.tmux/functions/todo.tmux
bind-key u switch-client -t upkeep
bind-key w source-file $HOME/.tmux/functions/write.tmux
