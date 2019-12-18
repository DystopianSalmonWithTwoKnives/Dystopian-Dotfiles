#!/bin/bash

    st -c front & 
    xdotool windowactivate $(xdotool search --class front)
    sleep 0.1
    xdotool type "export PS1=\"\""
    xdotool key Return
    sleep 0.1
    xdotool type "echo -e \"\n\n\" && neofetch | lolcat -s 201 && printf '\\33[?25l'"
    xdotool key Return
    xdotool key Shift_L+Alt_L+space
    sleep 0.1
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.1
    xdotool mousemove 630 400
    sleep 0.1
    xdotool mouseup 3
    xdotool mousedown 1
    sleep 0.1
    xdotool mousemove_relative 50 330
    sleep 0.1
    xdotool mouseup 1
    xdotool keyup Alt_L

    st -c front1 & 
    xdotool windowactivate $(xdotool search --class front1)
    sleep 0.1
    xdotool type "peaclock"
    xdotool key Return
    xdotool key Shift_L+Alt_L+space
    xdotool key s
    sleep 0.1
    xdotool key Escape
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.1
    xdotool mousemove 630 270
    sleep 0.1
    xdotool mouseup 3
    xdotool mousedown 1
    sleep 0.1
    xdotool mousemove_relative 50 50
    sleep 0.1
    xdotool mouseup 1
    xdotool keyup Alt_L

    st -c front2 & 
    xdotool windowactivate $(xdotool search --class front2)
    sleep 0.1
    xdotool key Shift_L+Alt_L+space
    sleep 0.1
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.1
    xdotool mousemove 630 670
    sleep 0.1
    xdotool mouseup 3
    xdotool mousedown 1
    sleep 0.1
    xdotool mousemove_relative 700 40
    sleep 0.1
    xdotool mouseup 1
    xdotool keyup Alt_L

