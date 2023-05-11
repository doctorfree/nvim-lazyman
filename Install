#!/bin/bash

DESTDIR="${HOME}"/.config/nvim-Lazyman
if [ -d "${DESTDIR}" ]
then
  echo "Existing ${DESTDIR} detected."
  echo "Use the command 'lazyman -R -N nvim-Lazyman' to remove existing installation"
  echo "After removing, re-run this command to install Lazyman"
  exit 1
else
  git clone https://github.com/doctorfree/nvim-lazyman "${DESTDIR}"
fi
if [ -x "${DESTDIR}"/lazyman.sh ]
then
  "${DESTDIR}"/lazyman.sh -d -y
else
  echo "${DESTDIR}/lazyman.sh not executable or does not exist"
  echo "Installation and initialization of Lazyman failed"
  exit 1
fi

exit 0
