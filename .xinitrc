xwallpaper --maximize .wallpaper &
xmodmap ~/.Xmodmap & 
#(sleep 2 && conky | while read LINE; do xsetroot -name "$LINE"; done) &
(sleep 1 && frontScreen.sh) &
exec dwm
