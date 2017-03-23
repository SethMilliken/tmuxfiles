set-option -g default-terminal "screen"
if-shell "test -n ${ANDROID_ROOT}" 'set-option -g default-terminal "screen-256color"'
