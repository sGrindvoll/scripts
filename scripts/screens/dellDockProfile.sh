#!/bin/bash

dplink=$(xrandr | grep -o "DVI-I-1-1 connected")

#echo "Variable contains: $dplink"

if [ -n "$dplink" ]; then
    #echo "Dell docking connected, applying profile"
    
    xrandr --output eDP1 --scale 1x1
    xrandr --output eDP1 --auto --rotate inverted 
    xrandr --output DVI-I-1-1 --auto --right-of eDP1
    xrandr --output DVI-I-2-2 --auto --right-of DVI-I-1-1
    xrandr --output DVI-I-1-1 --primary
    xrandr --output eDP1 --scale 0.6x0.6

  else
    #echo "Applynig default profile"
    
    xrandr --output eDP1 --scale 1x1
    xrandr --output eDP1 --auto --rotate normal
    xrandr --output DVI-I-1-1 --off
    xrandr --output DVI-I-2-2 --off
    xrandr --output eDP1 --primary
    xrandr --output eDP1 --scale 0.7x0.7
  fi
