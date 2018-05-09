#!/bin/sh

# List of atom themes.
list=("city-lights-ui" \
      "city-lights-syntax" \
      "seti-ui" \
      "seti-syntax")

# Install each theme one by one.
for thms in ${list[@]}
do
    apm install $thms
done
