#!/bin/bash
#
have_go=$(type -p go)
if [ "${have_go}" ]
then
  go install github.com/mattn/efm-langserver@latest
else
  have_brew=$(type -p brew)
  if [ "${have_brew}" ]
  then
    brew install efm-langserver
  else
    echo "The go or brew binaries not found in the execution path."
    echo "Install go or brew and add it to your PATH and rerun this script."
    exit 1
  fi
fi
