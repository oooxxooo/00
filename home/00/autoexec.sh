#!/usr/bin/env bash
# /home/oo/.config/i3/config


cd $( dirname $0 )


nice ./autoexec/code.sh &

nice ./autoexec/xdef.sh &
nice ./autoexec/sfwr.sh &

nice ./autoboot/moni.sh &


