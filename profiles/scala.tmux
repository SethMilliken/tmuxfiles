# Create a ready-to-go tmux session
new-session -s 'scala'

set-environment "HOME" "${HOME}"
set-environment "coursera_home" "${HOME}/staging/coursera"
set-environment "assignment_home" "${HOME}/staging/coursera/reactive/week2"
set-environment "play_home" "${HOME}/sandbox/code/playtest"

set-option default-path "${HOME}/staging/coursera/reactive/week2/simulations/"

new-window -n 'scratch'
send-keys -t 'scratch' "sleep 4; tmux set-option -g monitor-activity on" "Enter"

#new-window -n 'playtest'
#send-keys -t 'playtest' "cd ${play_home}" "Enter"
#send-keys -t 'playtest' "play \"run 9002\""

new-window -n 'sbt'
send-keys -t 'sbt' "sbt" "Enter" "run-main simulations.gui.EpidemyDisplay"
# test, checkStyle, submit ...

new-window -n 'hack'
send-keys -t 'hack' "vim src/**/*.scala" "Enter"

new-window -n 'commit'
send-keys -t 'commit' "git st" "Enter"

set-option default-path "${HOME}/staging/coursera/reactive/"

new-window -n 'notes'
send-keys -t 'notes' "vim README.md" "Enter"

#new-window -n 'scala'
#send-keys -t 'scala' "scala" "Enter"

set-option default-path "${HOME}/.tmux"

new-window -n 'mux'
send-keys -t 'mux' "vim ~/.tmux/scala.tmux" "Enter"

# vim: ft=tmux
