#!/bin/bash
# Purpose: Change screen brightness
# Author: Kunhee Ha

echo "Select Screen"
echo '(a) All (b) Main (c) Vertical'
read screen

if [ "${screen}" != "" ]
then
  echo "Select Brightness from 1-10"
  read brightness
  # newbrightness=expr ${brightness} * 0.1
  if [ "${screen}" == "a" ]
  then
    echo "hello"
    # echo ${newbrightness}
    # exec "xrandr --output HDMI-A-0 --brightness ${newbrightness}"
    # exec "xrandr --output DisplayPort-0 --brightness ${newbrightness}"
  fi
fi
