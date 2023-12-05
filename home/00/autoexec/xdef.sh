#!/usr/bin/env bash


cd $( dirname $0 )


# screensaver
xset s     300

# standby suspend off
xset dpms  600 900 900

# xterm
xrdb       -merge ./xterm.conf

# xmodmap
# xmodmap    ./xmodmap.conf


