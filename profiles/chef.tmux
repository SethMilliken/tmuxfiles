# Create a ready-to-go tmux session
new-session -s 'chef'

new-window -n '~' -c  "${HOME}"
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'chef' -c "${HOME}/sandbox/code/chef_configs"
send-keys -t 'chef' "git state" "Enter"

new-window -n 'vagrant' -c "${HOME}/sandbox/code/vagrant-configs/jenkins"
send-keys -t 'vagrant' "vagrant up"
split-window -h
send-keys -t 'vagrant' "./chef_it.sh"

new-window -n 'ssh' -c "${HOME}/sandbox/code/vagrant-configs/jenkins"
send-keys -t 'ssh' "vagrant ssh"

new-window -n 'init' -c "${HOME}/sandbox/code/vagrant-configs/jenkins"
send-keys -t 'init' "./init.sh"

new-window -n 'jobs' -c "${HOME}/stage/jenkins/jobs"
send-keys -t '.0' "grep ':' plugin_report.txt | sed -e 's/://' | sort | pbcopy"
split-window -h
send-keys -t '.1' "vim plugin_report.txt"

# vim: ft=tmux
