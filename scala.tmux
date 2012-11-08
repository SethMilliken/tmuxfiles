# Create a ready-to-go tmux session
rename-session 'scala'

set-environment -g "coursera_home" "${HOME}/staging/coursera"
set-environment -g "assignment_home" "${coursera_home}/week6-anagrams/forcomp"

set-option default-path "${assignment_home}"
new-window -n 'scratch'
send-keys -t 'scratch' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

set-option default-path "${assignment_home}"
new-window -n 'sbt'
send-keys -t 'sbt' "sbt" "Enter"

set-option default-path "${assignment_home}"
new-window -n 'work'
send-keys -t 'work' "vim src/**/*.scala" "Enter"

set-option default-path "${assignment_home}"
new-window -n 'scala'
send-keys -t 'scala' "scala" "Enter"

set-option default-path "${coursera_home}"
new-window -n 'notes'
send-keys -t 'notes' "vim README.md" "Enter"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "vim ~/.tmux/scala.tmux" "Enter"

set-option default-path "${assignment_home}"

# vim: ft=tmux
