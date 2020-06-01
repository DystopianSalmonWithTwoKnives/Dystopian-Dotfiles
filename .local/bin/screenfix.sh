#!/bin/sh

dual(){
xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA-1 --off --output HDMI-1 --mode 1920x1080 --pos 1366x0 --rotate normal --output DP-1 --off --output HDMI-2 --off --output HDMI-3 --off --output DP-2 --off --output DP-3 --off
}

laptop(){
    xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA-1 --off --output HDMI-1 --off --output DP-1 --off --output HDMI-2 --off --output HDMI-3 --off --output DP-2 --off --output DP-3 --off
}

hdmon(){
xrandr --output LVDS-1 --off --output VGA-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-2 --off --output HDMI-3 --off --output DP-2 --off --output DP-3 --off
}

action="$(printf "laptop\\ndual\\nhdmon" | dmenu -i -p "Choose a display : ")"

case $action in
    laptop) laptop;;
    dual) dual;;
    hdmon) hdmon;;
esac

xwallpaper --maximize .wallpaper
dwmstatusbar.sh

