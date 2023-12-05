#!/usr/bin/env bash


cd $( dirname $0 )
source ../status/$( basename $0 )
  ROOT=$SM_ROOT
  ENABLE=$SM_ENABLE
  ACTIVE=$SM_ACTIVE
  STATE=$SM_STATE
  IPS=( ${SM_IPS[@]} )
  HOSTS=( ${SM_HOSTS[@]} )
  USERS=( ${SM_USERS[@]} )
  PASSS=( ${SM_PASSS[@]} )
  VERSS=( ${SM_VERSS[@]} )
  LETTERS=( ${SM_LETTERS[@]} )
  PREFIXS=( ${SM_PREFIXS[@]} )
  MNTS=( ${SM_MNTS[@]} )

function press_key {
  if [ $ENABLE -eq 0 ]; then return; fi
    # sleep 1
  if   [ $ACTIVE -eq 1 ]; then
    for i in ${!IPS[@]}; do
      dirs=(` echo ${PASSS[i]} \
        | smbclient -L ${IPS[i]} 2>/dev/null \
        | grep 'Disk' | grep -v '\\$' \
        | awk -F"[\t :]+" '{print $2}' \
        `)
      for d in ${dirs[@]}; do
        echo sudo rmdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}/$d"
        sudo umount "$ROOT/${PREFIXS[i]}${HOSTS[i]}/$d"
        sudo rmdir  "$ROOT/${PREFIXS[i]}${HOSTS[i]}/$d"
        done
      # echo sudo rmdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}"
      sudo rmdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}"
      done
  elif [ $ACTIVE -eq 0 ]; then
    for i in ${!IPS[@]}; do
      echo sudo mkdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}"
      sudo mkdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}"
      dirs=(` echo ${PASSS[i]} \
        | smbclient -L ${IPS[i]} 2>/dev/null \
        | grep 'Disk' | grep -v '\\$' \
        | awk -F"[\t :]+" '{print $2}' \
        `)
      for d in ${dirs[@]}; do
        echo sudo mkdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}/$d"
        sudo mkdir "$ROOT/${PREFIXS[i]}${HOSTS[i]}/$d"
        sudo mount \
          -o 'rw,uid=1000,gid=100' \
          -o 'dir_mode=0770,file_mode=0770' \
          -o "vers=${VERSS[i]}," \
          -o "username=${USERS[i]},password=${PASSS[i]}" \
          "//${IPS[i]}/$d"  "$ROOT/${PREFIXS[i]}${HOSTS[i]}/$d"
          done
      done
  fi
  }

press_key

cd ../autostat
source ./reset.sh


