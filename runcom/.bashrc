#!/bin/bash

# ............................................................................ #
#             ______   _______  _______           _______  _______             #
#            (  ___ \ (  ___  )(  ____ \|\     /|(  ____ )(  ____ \            #
#            | (   ) )| (   ) || (    \/| )   ( || (    )|| (    \/            #
#            | (__/ / | (___) || (_____ | (___) || (____)|| |                  #
#            |  __ (  |  ___  |(_____  )|  ___  ||     __)| |                  #
#            | (  \ \ | (   ) |      ) || (   ) || (\ (   | |                  #
#            | )___) )| )   ( |/\____) || )   ( || ) \ \__| (____/\            #
#            |/ \___/ |/     \|\_______)|/     \||/   \__/(_______/            #
# ............................................................................ #

export OS_NAME=$(uname -s)

# ---------------------------------------------------------------------------- #
# Mac OS X - Darwin                                                            #
# ---------------------------------------------------------------------------- #

if [ "${OS_NAME}" = "Darwin" ] ; then
  [ -f $HOME/.runcom/mac/profile ] && source $HOME/.runcom/mac/profile
  [ -f $HOME/.runcom/mac/setup ] && source $HOME/.runcom/mac/setup
  [ -f $HOME/.runcom/mac/functions ] && source $HOME/.runcom/mac/functions
  [ -f $HOME/.runcom/mac/aliases ] && source $HOME/.runcom/mac/aliases
fi

# ---------------------------------------------------------------------------- #
# Linux                                                                        #
# ---------------------------------------------------------------------------- #

if [ "${OS_NAME}" = "Linux" ] ; then
  [ -f $HOME/.runcom/linux/functions ] && source $HOME/.runcom/linux/functions
  [ -f $HOME/.runcom/linux/aliases ] && source $HOME/.runcom/linux/aliases
fi
