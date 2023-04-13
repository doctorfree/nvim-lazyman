#!/usr/bin/env bash

echo "This will uninstall Homebrew and all of the packages installed with brew."
while true
do
  read -p "Uninstall Homebrew and all packages installed with brew ? (y/n) " yn
  case $yn in
    [Yy]* )
          break
          ;;
    [Nn]* )
          printf "\nExiting.\n"
          exit 0
          ;;
        * ) echo "Please answer yes or no."
          ;;
  esac
done

brew remove --force $(brew list --formula)

platform=`uname -s`
if [ "${platform}" == "Darwin" ]
then
  brew remove --cask --force $(brew list)
else
  brew remove --force $(brew list)
fi

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

[ -d /home/linuxbrew/.linuxbrew ] && sudo rm -rf /home/linuxbrew/.linuxbrew

exit 0
