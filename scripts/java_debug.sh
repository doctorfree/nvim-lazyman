#!/bin/bash
#
NVIMDIR="$1"
[ "${NVIMDIR}" ] || {
  echo "Config dir argument required. Exiting."
  exit 1
}
[ -d ${HOME}/.config/${NVIMDIR} ] || {
  echo "${HOME}/.config/${NVIMDIR} does not exist. Exiting."
  exit 1
}
have_git=$(type -p git)
[ "${have_git}" ] || {
  echo "Could not locat git command. Exiting."
  exit 1
}
have_npm=$(type -p npm)
[ "${have_npm}" ] || {
  echo "Could not locat npm command. Exiting."
  exit 1
}
[ -d ${HOME}]/workspace ] || mkdir -p ${HOME}/workspace
git clone https://github.com/microsoft/java-debug \
  ${HOME}/.config/${NVIMDIR}/.java-debug
cd ${HOME}/.config/${NVIMDIR}/.java-debug
[ -x ./mvnw ] && ./mvnw clean install
git clone https://github.com/microsoft/vscode-java-test \
  ${HOME}/.config/${NVIMDIR}/.vscode-java-test
cd ${HOME}/.config/${NVIMDIR}/.vscode-java-test
npm install
npm run build-plugin
