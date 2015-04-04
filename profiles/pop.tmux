# Create a ready-to-go tmux session
new-session -s 'storage' -n 'a'
set-option -g remain-on-exit on
new-window -n 'w' -d 'echo "Writing anchor."'
split-window -t 'w' 'echo "Pretend this is for writing."'
#set-option -g remain-on-exit off

# vim: ft=tmux
