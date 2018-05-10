#!/bin/sh

# Script to configure a new session at 42.
# A lot of these were taken from @mathiasbynens' script and @pbondoer.
#
# Sources:
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# https://github.com/pbondoer/dotfiles/blob/master/osx/ox-42.sh
# https://gist.github.com/brandonb927/3195465

# ---------------------------------------------------------------------------- #
# Logo                                                                         3
# ---------------------------------------------------------------------------- #

echo "\nLet's change some of the system preferences :D\n"
echo "          .:'    "
echo "      __ :'__    "
echo "   .'........'.  "
echo "  :...........-' "
echo "  :.........:    "
echo "   :.........'-; "
echo "    '.__.-.__.'  "
echo "\nSit and relax, I'll take care of this shit...\n"

# ---------------------------------------------------------------------------- #
# System setup                                                                 #
# ---------------------------------------------------------------------------- #

echo "========================= OSX Preferences =========================\n"
# Setup preferences
sh scripts/mouse.sh
sh scripts/keyboard.sh
sh scripts/system.sh
sh scripts/gui.sh
echo "\n========================= OSX Applications =========================\n"
# Setup application
sh scripts/finder.sh
sh scripts/dock.sh
sh scripts/apps.sh

killall SystemUIServer

# ---------------------------------------------------------------------------- #
# Brew                                                                         #
# ---------------------------------------------------------------------------- #

echo "\n==================== Installing / Updating Brew ====================\n"
# Update brew
echo " ->    Updating brew\c"
brew update

# Install packages if they don't exist
for pkg in node htop tree bower valgrind; do
    if brew list -1 | grep -q "^${pkg}\$"; then
        echo "Package '$pkg' is installed"
    else
        echo "Installing package $pkg"
        brew install $pkg
    fi
done

# ---------------------------------------------------------------------------- #
# Brew                                                                         #
# ---------------------------------------------------------------------------- #

echo "\n================ Installing / Updating NPM Packages ================\n"

# Clean the cache
npm cache --force clean
echo " ->    Updating npm\c"

# Install packages if they don't exist
for pkg in electron browser-sync html-to-react-components react-native \
            create-react-app; do
    if npm list -1 | grep -q "^${pkg}\$"; then
        echo "Package '$pkg' is installed"
    else
        echo "Installing package $pkg"
        npm install $pkg
    fi
done

# Restarts everything
killall -KILL -u $USER
