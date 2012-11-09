# Create a ready-to-go tmux session
rename-session 'standard'

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}"
new-window -n 'invalidations'
send-keys -t 'invalidations' "(invalidate -s widget testing && invalidate testing) | tee >(pbcopy)"

set-option default-path "${HOME}/.vim"
new-window -n '.vim'
send-keys -t '.vim' "git state" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'bin'
send-keys -t 'bin' "git state" "Enter"

set-option default-path "${HOME}/.pentadactyl"
new-window -n '5dactyl'
send-keys -t '5dactyl' "git state" "Enter"

set-option default-path "${HOME}"
new-window -n 'brew'
send-keys -t 'brew' "brew update && brew upgrade" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'synswitch'
send-keys -t 'synswitch' "synswitch work"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "tte" "Enter"

set-option default-path "${HOME}"
new-window -n 'slate'
send-keys -t 'slate' "vim .slate" "Enter"

set-option default-path "${HOME}/sandbox/code/engage"
new-window -n 'engage'
send-keys -t 'engage' "git state" "Enter"

set-option default-path "${HOME}/sandbox/code/prod-puppet"
new-window -n 'prodpup'
send-keys -t 'prodpup' "vim manifests/engage-nodes/production.pp" "Enter"

set-option default-path "${HOME}/sandbox/code/puppet"
new-window -n 'puppet'
send-keys -t 'puppet' "vim manifests/engage-nodes/*" "Enter"

set-option default-path "${HOME}/sandbox/code"
new-window -n 'code'
send-keys -t 'code' "ls -al" "Enter"

set-option default-path "${HOME}/staging/pow/"
new-window -n 'pow'
send-keys -t 'pow' "vim tokenurl/app/controllers/tokenurl_controller.rb" "Enter"
#send-keys -t 'pow' "vim tokenurl/log/development.log" "Enter"
#send-keys -t 'pow' "vim tokenurl/helpers/tokenurl_helper.rb" "Enter"

set-option default-path "${HOME}/sandbox/code/widgets"
new-window -n 'widgets'
send-keys -t 'widgets' "git state" "Enter"

set-option default-path "${HOME}/sandbox/code/engage-wiki"
new-window -n 'engage-wiki'
send-keys -t 'engage-wiki' "git state" "Enter"

set-option default-path "${HOME}/sandbox/code/nginx"
new-window -n 'nginx'
send-keys -t 'nginx' "git state" "Enter"

#set-option default-path "${HOME}/bin"
#new-window -n 'mount_vm'
#send-keys -t 'mount_vm' "mount_vm"

set-option default-path "${HOME}"

# Start VMWare Fusion
# ssh odev x 2 windows
# tt
# New iTerm Window

# vim: ft=tmux
