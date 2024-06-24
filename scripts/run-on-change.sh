# -t echoes the command.
# fswatch -e ".*" -i "\\.swift$" . | xargs -t -n 1 -I {} swift "{}"

# Runs the swift file on change.
# fswatch -e ".*" -i ".*\\.swift$" . | xargs -I {} echo ' --- Execution Start ' && swift '{}'

# With line separator to mark between executions
# fswatch -e ".*" -i ".*\\.swift$" . | xargs -I {} sh -c 'echo "\n=== Execution Start ==========================================================="; swift "{}"' sh

# With warnings suppressed
fswatch -e ".*" -i ".*\\.swift$" . | xargs -I {} sh -c 'echo "\n=== Execution Start `date +"%H:%M:%S"`==================================================="; swift -suppress-warnings "{}"' sh
