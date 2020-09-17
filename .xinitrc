xset r rate 250 50
xwallpaper --zoom .wallpaper &
xmodmap ~/.config/xmodmap/.Xmodmap & 
xcompmgr &
#dwmstatusbar.sh &
dwmblocks &
#(sleep 1 && frontScreen.sh) &
#(sleep 2 && st) &
exec dwm
#exec openbox
#exec ~/prog/c/window_manager/window_manager
#exec sowm
#exec budgie-desktop
#exec ~/git/catwm/catwm
