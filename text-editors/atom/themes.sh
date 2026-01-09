#!/bin/sh

# List of atom themes.
list=("seti-ui" \
      "seti-syntax")

# Install each theme one by one.
for theme in ${list[@]}
do
    apm install $theme
done
