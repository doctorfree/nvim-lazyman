#!/bin/bash
#
# Check if we have Python 3.9 or greater
#
have_python3=$(type -p python3)
if [ "${have_python3}" ]
then
  major=$(python3 -c 'import sys; print(sys.version_info.major)')
  if [ ${major} -eq 3 ]
  then
    minor=$(python3 -c 'import sys; print(sys.version_info.minor)')
    if [ ${minor} -ge 9 ]
    then
      echo "OK"
    else
      echo "Python 3.9 or greater required"
    fi
  else
    echo "Python 3 required"
  fi
  echo "Python 3 version info:"
  python3 -c 'import sys; print(sys.version_info[:])'
else
  echo "Python 3 not found"
fi
