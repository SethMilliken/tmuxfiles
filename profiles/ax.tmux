# Create a ready-to-go tmux session
new-session -s 'araxia.net

set-option default-path "${HOME}"
new-window -n '~'
send-keys -t '~' "git state" "Enter"
send-keys -t '~' "sleep 3; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${HOME}/ax/"
new-window -n 'notes'
send-keys -t 'notes' "vim todo.tst.txt" "Enter"

set-option default-path "/etc/nginx"
new-window -n 'nginx'
send-keys -t 'nginx' "#sudo nginx -t && sudo /etc/rc.d/nginx restart" "Enter"
send-keys -t 'nginx' "sudo -E vim sites-available/seth.conf README.md nginx.conf" "Enter"
split-window -t 'nginx' -h
send-keys -t 'nginx' "tail -f /var/log/nginx/error.log" "Enter"
split-window -t 'nginx' -v
send-keys -t 'nginx' "tail -f /var/log/nginx/araxia.net.access.log" "Enter"

set-option default-path "/var/www/conf/"
new-window -n 'apache'
send-keys -t 'apache' "#sudo apachectl configcheck  && sudo apachectl graceful" "Enter"
send-keys -t 'apache' "sudo -E vim seth.conf httpd.conf" "Enter"
set-option default-path "/var/www/logs/"
split-window -t 'apache' -h
send-keys -t 'apache' "tail -f error_log" "Enter"
split-window -t 'apache' -v
send-keys -t 'apache' "tail -f araxia.net" "Enter"

set-option default-path "/var/apache2/conf/"
new-window -n 'apache2'
send-keys -t 'apache2' "#sudo apachectl2 configcheck  && sudo apachectl2 graceful" "Enter"
send-keys -t 'apache2' "sudo -E vim /etc/apache2/httpd2.conf seth/araxia.net.conf" "Enter"
set-option default-path "/var/apache2/logs/"
split-window -t 'apache2' -h
send-keys -t 'apache2' "tail -f error_log" "Enter"
split-window -t 'apache2' -v
send-keys -t 'apache2' "tail -f araxia.net.error_log" "Enter"

set-option default-path "${HOME}/bin"
new-window -n 'mux'
send-keys -t 'mux' "vim ~/.tmux/ax.tmux" "Enter"

set-option default-path "${HOME}/Maildir"
new-window -n 'mail'
set-option default-path "${HOME}/.procmail"
split-window -t 'mail' -h
send-keys -t 'mail' "less +F procmail.log" "Enter"

set-option default-path "${HOME}"
new-window -n 'mutt'
send-keys -t 'mutt' "mutt" "Enter"

set-option default-path "${HOME}"

# vim: ft=tmux
