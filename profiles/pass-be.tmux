new-session -s 'pass-be'

new-window -n 'work' -c  "${HOME}/sandbox/code"
send-keys -t 'work' "git state" "Enter"
send-keys -t 'work' "sleep 6; tmux set-option -g monitor-activity on" "Enter"

new-window -n 'pass-be' -c "${HOME}/sandbox/code/pass-be"

new-window -n 'pass-be2' -c "${HOME}/sandbox/code/pass-be2"

new-window -n 'webenv' -c "${HOME}/sandbox/code/webenv"
send-keys -t 'webenv' "git up" "Enter"
send-keys -t 'webenv' "docker-compose up"
split-window -t 'webenv' -h -c "${HOME}/sandbox/code/web-mocks"
send-keys -t 'webenv' "git up" "Enter"
split-window -t 'webenv' -h -c "${HOME}/sandbox/code/airship"
send-keys -t 'webenv' "git up" "Enter"
select-pane -t ':webenv.0'

new-window -n 'docker' -c "${HOME}/sandbox/code/pass-be2/dev/docker/"
send-keys -t 'docker' "docker-compose up" "Enter"

new-window -n 'pass-sql' -c "${HOME}/sandbox/code/passtools-sql"

new-window -n 'pass-be-docs' -c "${HOME}/sandbox/code/pass-be-docs"

new-window -n 'chef' -c "${HOME}/sandbox/code/chef_configs"

new-window -n 'pass-fe' -c "${HOME}/sandbox/code/pass-fe"
send-keys -t 'pass-fe' "rvm use ruby-2.0.0-p643@pass-fe" "Enter"
send-keys -t 'pass-fe' "rails server" "Enter"

#new-window -n 'ngrok' -c "${HOME}/sandbox/code/pass-be"
#send-keys -t 'ngrok' "ngrok http 8080"

#new-window -n 'jira'
#send-keys -t 'jira' "sudo ssh -L tofurkey.urbanairship.com:443:67.131.110.9:8443 -L tofurkey.urbanairship.com:8443:67.131.110.9:8443 -N work" "Enter"

#new-window -n 'cass' -c "${HOME}/sandbox/code/pass-be"
#send-keys -t 'cass' "cassandra -Dcassandra.config=file://`pwd`/META-INF/cassandra.yaml -f" "Enter"
#split-window -t 'cass'
#send-keys "cqlsh" "Enter"

new-window -n 'code' -c "${HOME}/sandbox/code/"

# vim: ft=tmux
