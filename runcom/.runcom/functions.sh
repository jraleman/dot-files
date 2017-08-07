#!/bin/sh

OS_NAME=$(uname -s)

# Functions ====================================================================

# ---------------------------------------------------------------------------- #
# General                                                                      #
# ---------------------------------------------------------------------------- #

# Checks if a program is installed.
# Credit: https://gist.github.com/JamieMason/4761049
function program_is_installed {
  local return_=1
  hash $1 >/dev/null 2>&1 || { local return_=0; }
  echo "$return_"
}

# Display a message in red with a cross by it
function echo_fail {
  printf "\e[31m✘ ${1}"
  echo "\033[0m"
}

# Display a message in green with a tick by it
function echo_pass {
  printf "\e[32m✔ ${1}"
  echo "\033[0m"
}

# echo pass or fail
function echo_if {
  if [ $1 == 1 ]; then
    echo_pass $2
  else
    echo_fail $2
  fi
}

# Checks if npm package is installed.
function npm_package_is_installed {
  local return_=1
  ls node_modules | local return_=0 || grep $1 >/dev/null 2>&1
  echo "$return_"
}

# Extract many types of compressed packages
# Credit: http://nparikh.org/notes/zshrc.txt
function extract {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2)  tar -jxvf "$1"                        ;;
      *.tar.gz)   tar -zxvf "$1"                        ;;
      *.bz2)      bunzip2 "$1"                          ;;
      *.dmg)      hdiutil mount "$1"                    ;;
      *.gz)       gunzip "$1"                           ;;
      *.tar)      tar -xvf "$1"                         ;;
      *.tbz2)     tar -jxvf "$1"                        ;;
      *.tgz)      tar -zxvf "$1"                        ;;
      *.zip)      unzip "$1"                            ;;
      *.ZIP)      unzip "$1"                            ;;
      *.pax)      cat "$1" | pax -r                     ;;
      *.pax.Z)    uncompress "$1" --stdout | pax -r     ;;
      *.Z)        uncompress "$1"                       ;;
      *) echo "'$1' cannot be extracted/mounted via extract()" ;;
    esac
  else
     echo "'$1' is not a valid file to extract"
  fi
}

# ==================================================================== Functions
