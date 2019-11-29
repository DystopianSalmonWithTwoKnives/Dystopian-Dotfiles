xwallpaper --maximize .wallpaper &
xmodmap ~/.Xmodmap & 
# sxhkd &
~/.local/bin/dwmstatusbar.sh &
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
exec dwm
