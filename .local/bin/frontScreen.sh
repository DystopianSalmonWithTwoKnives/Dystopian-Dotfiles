#!/bin/bash

    st -c front & 
    # xdotool windowactivate $(xdotool search --class front)
    xdotool type "export PS1=\"\" && echo -e \"\n\n\n\n\" && neofetch | lolcat -s 201 && printf '\\33[?25l'"
    xdotool key Return
    xdotool key Shift_L+Alt_L+space
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 630 420
    xdotool mouseup 3
    xdotool mousedown 1
    xdotool mousemove_relative 50 323
    xdotool mouseup 1
    xdotool keyup Alt_L

    st -c front1 & 
    # xdotool windowactivate $(xdotool search --class front1)
    sleep 0.08
    xdotool type "peaclock"
    xdotool key Return
    xdotool key Shift_L+Alt_L+space
    xdotool key s
    sleep 0.05
    xdotool key Escape
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 630 270
    xdotool mouseup 3
    xdotool mousedown 1
    sleep 0.05
    xdotool mousemove_relative 50 50
    xdotool mouseup 1
    xdotool keyup Alt_L

    st -c front2 & 
    # xdotool windowactivate $(xdotool search --class front2)
    sleep 0.05
    xdotool key Shift_L+Alt_L+space
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 630 680
    xdotool mouseup 3
    xdotool mousedown 1
    xdotool mousemove_relative 700 50
    xdotool mouseup 1
    xdotool keyup Alt_L

