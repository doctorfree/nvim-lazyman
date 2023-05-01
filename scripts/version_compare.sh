#!/usr/bin/env bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
#
# version_compare.sh - compares two version strings
#
# Exit value is:
#      0 if version strings are equal
#      1 if first version string is greater than second version string
#      2 if first version string is less than second version string

version_compare() {
  if [[ $1 == "$2" ]]; then
    return 0
  fi
  local IFS=.
  local i ver1=("$1") ver2=("$2")
  # Fill empty fields in ver1 with zeros
  for ((i = ${#ver1[@]}; i < ${#ver2[@]}; i++)); do
    ver1[i]=0
  done
  for ((i = 0; i < ${#ver1[@]}; i++)); do
    if [[ -z ${ver2[i]} ]]; then
      # fill empty fields in ver2 with zeros
      ver2[i]=0
    fi
    if ((10#${ver1[i]} > 10#${ver2[i]})); then
      return 1
    fi
    if ((10#${ver1[i]} < 10#${ver2[i]})); then
      return 2
    fi
  done
  return 0
}

first=$1
second=$2
first=${first//[!0-9.]/}
second=${second//[!0-9.]/}

version_compare "${first}" "${second}"
case $? in
  0)
    echo "$1 equals $2"
    exit 0
    ;;
  1)
    echo "$1 greater than $2"
    exit 1
    ;;
  2)
    echo "$1 less than $2"
    exit 2
    ;;
esac
exit 3
