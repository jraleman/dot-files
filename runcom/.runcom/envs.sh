#!/bin/sh

OS_NAME=$(uname -s)

# Envs  ========================================================================

# ---------------------------------------------------------------------------- #
# Mac OS X - Darwin                                                            #
# ---------------------------------------------------------------------------- #

if [ $OS_NAME == "Darwin" ] ; then
  # Export brew path, packages to be installed in goinfre.
  export PATH="/Volumes/Storage/goinfre/$USER/brew/bin:$PATH"
fi

# ========================================================================= Envs
