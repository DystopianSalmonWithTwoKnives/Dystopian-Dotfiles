%mplayer tv:// -tv driver=v4l2:width=700:height=400:device=/dev/video0:fps=30:outfmt=yuy2
pkill -f /dev/video || mpv --no-osc --no-input-default-bindings --input-conf=/dev/null --geometry=480x280+875+477 --title="mpvfloat" --no-border --profile=low-latency --untimed /dev/video0

#580x280
#700x400
#1000x600
