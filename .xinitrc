#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		            [ -x "$f" ] && . "$f"
			        done
				    unset f
	fi

exec  pulseaudio --start & 
#exec start-pulseaudio-x11 &
killall dunst &
dunst &  
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" 0.5 &
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
feh --bg-fill $HOME/Pictures/Xrupqt.jpg &
xrdb -merge ~/.Xresources &
setxkbmap latam &
exec dbus-run-session startfluxbox
