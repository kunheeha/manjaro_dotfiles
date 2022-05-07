#!/bin/bash
# Purpose: Automatic screen brightness depending on time
# Author: Kunhee Ha

hour="$(date +%H)"
day="$(date +%a)"
weekdays=(Mon Tue Wed Thu Fri)

# Weekdays Morning
if [ $hour -eq 09 ]
then
  exec xrandr --output HDMI-A-0 --brightness 1
  exec xrandr --output DisplayPort-0 --brightness 1
fi

# Evenings
if [ $hour -eq 19 ]
then
  exec xrandr --output HDMI-A-0 --brightness 0.5
  exec xrandr --output DisplayPort-0 --brightness 0.5
fi
