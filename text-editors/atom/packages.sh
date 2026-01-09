#!/bin/sh

# List of atom packages.
list=("ascii-lines-sort" \
      "atom-beautify" \
      "busy-signal" \
      "color-picker" \
      "json-converter" \
      "file-icons" \
      "highlight-selected" \
      "last-cursor-position" \
      "intentions" \
      "lines" \
      "merge-conflicts" \
      "minimap" \
      "php-cs-fixer" \
      "pigments" \
      "tablr" \
      "teletype" \
      "todo-show")

# Install each package one by one.
for pkgs in ${list[@]}
do
    apm install $pkgs
done
