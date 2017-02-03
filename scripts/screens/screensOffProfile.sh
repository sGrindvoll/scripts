#!/bin/bash

# Turn off all secondary screens

# Scales laptop screen to default
xrandr --output eDP1 --scale 1x1

# Turns off other monitor outputs
xrandr --output HDMI1 --off
xrandr --output DVI-I-1-1 --off
xrandr --output DVI-I-2-2 --off
xrandr --output VIRTUAL1 --off

# Returns laptop scale to preferred and sets primary
xrandr --output eDP1 --primary
xrandr --output eDP1 --scale 0.6x0.6
