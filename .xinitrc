xwallpaper --maximize .wallpaper &
xmodmap ~/.config/xmodmap/.Xmodmap & 
dwmstatusbar.sh &
(sleep 1 && frontScreen.sh) &
#(sleep 3 && st) &
exec dwm
#exec ~/prog/c/window_manager/window_manager
#exec sowm
#exec ~/git/catwm/catwm
