#!/usr/bin/env bash
# /etc/lightdm/lightdm.conf


 cd $( dirname $0 )

./autoboot/hdwr.sh

./autoboot/part.sh &
./autoboot/moni.sh &


