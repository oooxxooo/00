#!/usr/bin/env bash


# var
  echo --------------------
  OPT='-av '
  SRC='home'
  DST='/'
  SRC="./$SRC"
  DST="$DST"
  echo $SRC $DST

# chmod
  echo --------------------
  sudo chown -R oo:root $SRC
  sudo chmod -R 755     $SRC/00
  sudo chmod -R 744     $SRC/oo
  sudo chown root:root $SRC
  sudo chmod 755       $SRC
  ls -al $SRC

# sync
  echo --------------------
  echo " rsync $SRC $DST "
  sudo rsync $OPT $SRC $DST


