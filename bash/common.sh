#!/usr/bin/env bash

# suggestion / explanation from here: https://coderwall.com/p/fkfaqq/safer-bash-scripts-with-set-euxo-pipefail
set -euo pipefail

# setup checks for colours from here: https://unix.stackexchange.com/a/10065
bold=""
underline=""
standout=""
normal=""
black=""
red=""
green=""
yellow=""
blue=""
magenta=""
cyan=""
white=""

export bold
export underline
export standout
export normal
export black
export red
export green
export yellow
export blue
export magenta
export cyan
export white

# check if stdout is a terminal...
if test -t 1; then

  if [ -x "$(command -v tput)" ]; then

      # see if it supports colors...
      ncolors=$(tput colors)

      if test -n "$ncolors" && test $ncolors -ge 8; then
          bold="$(tput bold)"
          underline="$(tput smul)"
          standout="$(tput smso)"
          normal="$(tput sgr0)"
          black="$(tput setaf 0)"
          red="$(tput setaf 1)"
          green="$(tput setaf 2)"
          yellow="$(tput setaf 3)"
          blue="$(tput setaf 4)"
          magenta="$(tput setaf 5)"
          cyan="$(tput setaf 6)"
          white="$(tput setaf 7)"
      fi
  fi
fi
