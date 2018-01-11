#!/bin/sh

# List of atom packages.
list=("ascii-lines-sort" \
      "autocomplete-plus" \
      "color-picker" \
      "json-converter" \
      "file-icons" \
      "highlight-selected" \
      "last-cursor-position" \
      "lines" \
      "merge-conflicts" \
      "minimap" \
      "pigments" \
      "tablr" \
      "todo-show")

# Install each package one by one.
for pkgs in ${list[@]}
do
    apm install $pkgs
done
