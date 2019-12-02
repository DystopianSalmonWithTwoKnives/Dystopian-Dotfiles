xwallpaper --maximize .wallpaper &
xmodmap ~/.Xmodmap & 
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
exec dwm
xcompmgr &
