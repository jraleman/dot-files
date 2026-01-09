#!/bin/sh

list=("atom" \
      "gimp" \
      "inkscape" \
      "zip")

yes | sudo pacman -Sy ${list[*]}
