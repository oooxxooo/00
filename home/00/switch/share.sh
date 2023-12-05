#!/usr/bin/env bash


cd $( dirname $0 )
source ../status/$( basename $0 )
  ACTIVE=$SH_ACTIVE

function press_key {
  if [ $ACTIVE -eq 1 ]; then
    sudo systemctl stop smb nmb
  else
    sudo systemctl start smb nmb
  fi
  }

press_key

cd ../autostat
source ./reset.sh


