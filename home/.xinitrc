#!/bin/sh

find ~/dotfiles/wallpapers/ -type f | shuf -n 1 | xargs -i hsetroot -cover "{}"

sxhkd &
~/scripts/start-music.sh ~/study/music/ &
picom --backend glx &
pulseaudio --exit-idle-time=-1 -D
exec bspwm
