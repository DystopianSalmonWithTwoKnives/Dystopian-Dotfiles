#!/bin/bash

    st &
    sleep 0.1
    xdotool type "export PS1=\"\" && echo -e \"\n\n\n\n\" && neofetch | lolcat -s 201 && printf '\\33[?25l'"
    xdotool key Return
    xdotool key Shift_L+Alt_L+space
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 630 425
    xdotool mouseup 3
    xdotool mousedown 1
    xdotool mousemove_relative 50 300
    xdotool mouseup 1
    xdotool keyup Alt_L

    st -c front1 & 
    sleep 0.08
    xdotool type "peaclock"
    xdotool key Return
    xdotool key Shift_L+Alt_L+space
    sleep 0.1
    xdotool key s
    sleep 0.05
    xdotool key Escape
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 630 250
    xdotool mouseup 3
    xdotool mousedown 1
    sleep 0.05
    xdotool mousemove_relative 50 50
    xdotool mouseup 1
    xdotool keyup Alt_L

    st -c front2 & 
    sleep 0.1
    xdotool key Shift_L+Alt_L+space
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 610 380
    xdotool mouseup 3
    xdotool mousedown 1
    xdotool mousemove_relative 700 50
    xdotool mouseup 1
    xdotool keyup Alt_L

    st & 
    sleep 0.1
    xdotool key Shift_L+Alt_L+space
    xdotool keydown Alt_L
    xdotool mousedown 3
    sleep 0.05
    xdotool mousemove 610 295
    xdotool mouseup 3
    xdotool mousedown 1
    xdotool mousemove_relative 700 428
    xdotool mouseup 1
    xdotool keyup Alt_L

