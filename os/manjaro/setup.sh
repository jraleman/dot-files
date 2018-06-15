#!/bin/sh

cp -Rf ./.* $HOME
sh scripts/pacman.sh
sh scripts/yaourt.sh
sh scripts/npm.sh
