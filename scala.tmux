# Create a ready-to-go tmux session
rename-session 'scala'

set-environment -g "coursera_home" "${HOME}/staging/coursera"
set-environment -g "course" "reactive"
set-environment -g "assignment_home" "${coursera_home}/${course}/week2"
set-environment -g "play_home" "${HOME}/sandbox/code/playtest"

set-option default-path "${assignment_home}"
new-window -n 'scratch'
send-keys -t 'scratch' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

#set-option default-path "${play_home}"
#new-window -n 'playtest'
#send-keys -t 'playtest' "play \"run 9002\""

set-option default-path "${assignment_home}"
new-window -n 'sbt'
send-keys -t 'sbt' "sbt" "Enter" "run-main simulations.gui.EpidemyDisplay"
# test, checkStyle, submit ...

set-option default-path "${assignment_home}"
new-window -n 'hack'
send-keys -t 'hack' "vim src/**/*.scala" "Enter"

set-option default-path "${assignment_home}"
new-window -n 'commit'
send-keys -t 'commit' "git st" "Enter"

set-option default-path "${coursera_home}"
new-window -n 'notes'
send-keys -t 'notes' "vim README.md" "Enter"

#set-option default-path "${assignment_home}"
#new-window -n 'scala'
#send-keys -t 'scala' "scala" "Enter"

set-option default-path "${HOME}/.tmux"
new-window -n 'mux'
send-keys -t 'mux' "vim ~/.tmux/scala.tmux" "Enter"

set-option default-path "${assignment_home}"

# vim: ft=tmux
