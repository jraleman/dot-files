#!/bin/sh

cp -Rf .* ~/
sh scripts/pacman.sh
sh scripts/yaourt.sh
sh scripts/npm.sh
