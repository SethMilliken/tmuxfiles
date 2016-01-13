# Create a ready-to-go tmux session
new-session -s 'alfred'

new-window -n 'edit' -c  "${HOME}/sandbox/code/alfred"
send-keys -t 'edit' "rvm gemset use alfred" "Enter"

new-window -n 'run' -c "${HOME}/sandbox/code/alfred"
send-keys -t 'run' "rvm gemset use alfred" "Enter"
send-keys -t 'run' "ruby bot.rb config.yaml"

new-window -n 'tests' -c "${HOME}/sandbox/code/alfred"
send-keys -t 'run' "rvm gemset use alfred" "Enter"
send-keys -t 'tests' "rspec -f d spec/jenkins_spec.rb"

new-window -n 'chef' -c "${HOME}/sandbox/code/chef_configs/cookbooks/alfred"
send-keys -t 'chef' "rvm gemset use chef_configs" "Enter"

new-window -n 'cinch' -c "${HOME}/.rvm/gems/ruby-2.0.0-p481@alfred/gems/cinch-2.0.9"

new-window -n 'ircd' -c "${HOME}/sandbox/code/alfred"
send-keys -t 'ircd' "inspircd -c inspircd.conf --nofork --debug" "Enter"

# vim: ft=tmux
