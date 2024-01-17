#!/usr/bin/env bash


# var
  OPT='-av '
  DST='/'
  DST="$DST"
  SRCS='
    etc   \n
    usr   \n
    '
  SRCS=(` echo -e $SRCS \
    | awk -F"[\t ]+$" '{print $0}' \
    `)
  echo $DST
  echo ${#SRCS[@]} ${SRCS[@]}
  echo -------------------

# sync
  # sudo rsync $OPT $SRC $DST
  for s in ${SRCS[@]}
  do
    echo " rsync $s $DST "
    sudo chown -R root:root $s
    sudo chmod -R 755       $s
    sudo rsync $OPT $s $DST
    echo -e "-----"
    # rsync $OPT $s $DST
  done
  echo -------------------


# read -p ''


