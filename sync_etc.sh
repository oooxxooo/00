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
    echo $s $DST
    sudo rsync $OPT $s $DST
    # rsync $OPT $s $DST
  done
  echo -------------------


# read -p ''


