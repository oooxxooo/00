#!/usr/bin/env bash


cd $( dirname $0 )
source ../status/$( basename $0 )
  FILE=$MONI_FILE
  DPI='Xft.dpi:'
  # echo $FILE
  DEF=$MONI_DEF
  DEVS=(` echo ${MONI_DEVS[@]} `)
  ACTS=(` echo ${MONI_ACTS[@]} `)
  MODES=(` echo ${MONI_MODES[@]} `)
  RATES=(` echo ${MONI_RATES[@]} `)
  ONLYONE=$MONI_ONLYONE
  # echo ${#DEVS[@]} ${DEVS[@]}
  # echo ${#ACTS[@]} ${ACTS[@]}
  echo ${#MODES[@]} ${MODES[@]}
  echo ${#RATES[@]} ${RATES[@]}
  # echo $ONLYONE
  # echo ----------------------

function set_monitor {
  if   [ $ONLYONE -ne 1 ]; then
    for i in ${!DEVS[@]}; do
      if [ $i -eq 0 ]
      then echo $i 'interal'
        # xrandr --output ${DEVS[$i]} --off
        xrandr --output ${DEVS[$i]} --scale 1 --mode ${MODES[$i]} --rate ${RATES[$i]}
      else echo $i 'exteral'
        # xrandr --output ${DEVS[$i]} --mode ${MODES[$i]} --scale 1
        xrandr --output ${DEVS[$i]} --scale 1 --mode ${MODES[$i]} --rate ${RATES[$i]} --right-of ${DEVS[i-1]} --rotate left
      fi
      done
  fi
  xrdb -merge $FILE
}

set_monitor


