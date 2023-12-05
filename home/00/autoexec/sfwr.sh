#!/usr/bin/env bash


cd $( dirname $0 )


xss-lock -- betterlockscreen -l                     &
picom    -bcf                                       &
feh      --bg-fill --randomize ../background/00.jpg &
tmux     source ~/.config/tmux/tmux.conf            &
fcitx5                                              &


