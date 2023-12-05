#!/usr/bin/env bash


# var
  OPT='-av '
  SRC='home'
  DST='/'
  SRC="./$SRC"
  DST="$DST"
  echo $SRC $DST
  echo --------------------

# sync
  sudo rsync $OPT $SRC $DST



