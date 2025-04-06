#!/usr/bin/env bash


# xinitrc programs
if [[ -d /etc/X11/xinit/xinitrc.d ]]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[[ -x "$f" ]] && . "$f"
	done
	unset f
fi

# dual-monitor setup
xrandr --output eDP-1 --auto --left-of HDMI-1 &

# restore wallpaper
~/.fehbg &

# cursor theme
xsetroot -cursor_name left_ptr &

# compositor
picom --backend glx -b &

# wm
exec bspwm

