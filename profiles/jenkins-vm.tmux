# Create a ready-to-go tmux session
new-session -s 'jenkins-vm'

new-window -n '~' -c  "${HOME}"
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'chef' -c "${HOME}/sandbox/code/jenkins-move/chef4jenkins"
send-keys -t 'chef' "git up" "Enter" "vim roles/vm.json"

new-window -n 'vagrant' -c "${HOME}/sandbox/code/jenkins-move/vagrant4jenkins/centos_6/"
send-keys -t 'vagrant' "source jl" "Enter"

new-window -n 'vssh' -c "${HOME}/sandbox/code/jenkins-move/vagrant4jenkins/centos_6/"
send-keys -t 'vssh' "source jl" "Enter"
send-keys -t 'vssh' "vagrant ssh"

new-window -n 'init' -c "${HOME}/sandbox/code/jenkins-move/vagrant4jenkins/centos_6/"
send-keys -t 'init' "source jl" "Enter"
send-keys -t 'init' "./init.sh jenkins-vm"

new-window -n 'code' -c "${HOME}/sandbox/code/"

# vim: ft=tmux
