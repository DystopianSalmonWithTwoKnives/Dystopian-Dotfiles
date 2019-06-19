#! /bin/sh
# Using this until I take the time to write a proper dwm status bar in c.

# This script set the status bar in the upper right corner of dwm.

delim="|"

battery()
{
	echo "[$(cat /sys/class/power_supply/BAT0/capacity)%]"
}

timedate()
{
	echo "$(date '+%Y %b %d (%a) %I:%M%p') "
}

# == Main == #

status()
{
	echo "$(battery) $delim"
	echo "$(timedate)"
}

xsetroot -name "$(status | tr '\n' ' ')"
