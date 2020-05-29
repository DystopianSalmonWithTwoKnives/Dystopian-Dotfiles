xwallpaper --maximize .wallpaper &
xmodmap ~/.config/xmodmap/Xmodmap & 
#(sleep 2 && conky | while read LINE; do xsetroot -name "$LINE"; done) &
(sleep 1 && frontScreen.sh) &
#(sleep 3 && st) &
exec dwm
#exec ~/prog/c/window_manager/window_manager
#exec sowm
#exec ~/git/catwm/catwm
