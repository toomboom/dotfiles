#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

hsetroot 
picom &
xset r rate 150 35
xrandr --output HDMI-0 --mode 1920x1080
$HOME/.showbar.sh &

Telegram &
chromium lofiradio.ru vk.com youtube.com &
find ~/dotfiles/wallpapers/ -type f | shuf -n 1 | xargs -i hsetroot -cover "{}"

exec dwm
