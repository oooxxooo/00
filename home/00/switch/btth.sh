#!/usr/bin/env bash


# sudo systemctl enable bluetooth
cd $( dirname $0 )
source ../status/$( basename $0 )
  ENABLE=$BT_ENABLE
  POWER=$BT_POWER
  PAIR=$BT_PAIR
  CONN=$BT_CONN
  MAC=$BT_MAC

function press_key {
  if   [ $POWER -eq 1 ]; then
    # sudo systemctl stop bluetooth
    bluetoothctl disconnect $MAC
    bluetoothctl power off
  elif [ $POWER -eq 0 ]; then
    # sudo systemctl start bluetooth
    bluetoothctl power on
    bluetoothctl connect $MAC
    # bluetoothctl scan on
    # bluetoothctl pair    $MAC
    # bluetoothctl trust   $MAC
    # bluetoothctl connect $MAC
    sleep 0.5
    pactl set-sink-volume @DEFAULT_SINK@ 40%
  fi
  }

press_key

cd ../autostat
source ./reset.sh


