# If a function with the requested name exists,
#   source-file it.
#   Otherwise, display an error message.
if-shell "test -f \"${tmux_functions_home}/${tmux_function_selection}.tmux\""       \
  "source-file \"${tmux_functions_home}/${tmux_function_selection}.tmux\""           \
  "display-message \"function not found: \\\"${tmux_functions_home}/${tmux_function_selection}.tmux\\\"\""
