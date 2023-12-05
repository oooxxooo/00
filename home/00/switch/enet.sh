#!/usr/bin/env bash


# sudo systemctl enable NetworkManager
cd $( dirname $0 )
source ../status/$( basename $0 )
  DEV=$EN_DEV
  POWER=$EN_POWER

function press_key {
  if   [ $POWER -eq 1 ]; then
    sudo ip link set $DEV down
    # sudo systemctl stop NetworkManager
    # sudo systemctl stop dhcpcd
  elif [ $POWER -eq 0 ]; then
    sudo ip link set $DEV up
    # sudo systemctl start NetworkManager
    # sudo systemctl start dhcpcd
    # nmcli dev wifi list
    # nmcli dev wifi connect '' password ''
  fi
  }

press_key

cd ../autostat
source ./reset.sh


