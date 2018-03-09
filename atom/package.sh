#!/bin/sh

# List of atom packages.
list=("ascii-lines-sort" \
      "atom-beautify" \
      "autocomplete-plus" \
      "busy-signal" \
      "color-picker" \
      "json-converter" \
      "file-icons" \
      "highlight-selected" \
      "last-cursor-position" \
      "intentions" \
      "linter" \
      "linter-eslint" \
      "linter-ui-default" \
      "lines" \
      "merge-conflicts" \
      "minimap" \
      "php-cs-fixer" \
      "pigments" \
      "tablr" \
      "todo-show")

# Install each package one by one.
for pkgs in ${list[@]}
do
    apm install $pkgs
done
