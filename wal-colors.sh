#!/bin/bash
HELP_MSG="Use -b for background color, -f for foreground color, or -c for cursor color.";

# Loads colors from wal into shell
source /home/paul/.cache/wal/colors.sh;

# Closes any open color references
echo -e "\${color}";

# Loops through flags
# b for background, f for foreground, c for cursor, and h for help message.
while getopts 'bfch' FLAGS; do
    case "${FLAGS}" in
        b) echo -e "\${color "$background"}" | tr -d '#' ;;
        f) echo -e "\${color "$foreground"}" | tr -d '#' ;;
        c) echo -e "\${color "$cursor"}" | tr -d '#' ;;
        h) echo $HELP_MSG ;;
        *) echo -e "\n"$HELP_MSG ;;
    esac
done
