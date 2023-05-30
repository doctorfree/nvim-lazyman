#!/usr/bin/env bash
# shellcheck disable=SC2154
# shellcheck disable=SC1091

# Configure
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
source ./parse_yaml.sh

# Debug
DEBUG="$1"

function is_debug() {
    [ "$DEBUG" = "--debug" ] && return 0 || return 1
}

function get_name_index() {
  value=$1
  for i in "${!Configs__name[@]}"; do
    if [[ "${Configs__name[$i]}" = "${value}" ]]; then
      echo "${i}"
    fi
  done
}

if is_debug; then
    parse_yaml lazyman.yaml && echo
fi

# Execute
create_variables lazyman.yaml

# Tests
all_passed=1
if [ "${Categories_Base[0]}" == "Abstract" ]
then
  echo "Abstract is first in Base"
else
  echo "Abstract is NOT first in Base"
  all_passed=
fi
if [ "${Configs__name[0]}" == "Abstract" ]
then
  echo "Abstract is first named in Configs"
else
  echo "Abstract is NOT first named in Configs"
  all_passed=
fi
if [ "${Configs__url[0]}" == "https://github.com/Abstract-IDE/Abstract" ]
then
  echo "Abstract url is correct"
else
  echo "Abstract url is NOT correct"
  all_passed=
fi

# Find specified config by name and get its installation parameters
TEST_CONFIG_NAME="LaTeX"
index=$(get_name_index "${TEST_CONFIG_NAME}")
if [ "${index}" ]
then
  if [ "${Configs__url[${index}]}" == "https://github.com/benbrastmckie/.config" ]
  then
    echo "${TEST_CONFIG_NAME} url is correct"
  else
    echo "${TEST_CONFIG_NAME} url is NOT correct"
    all_passed=
  fi
  if [ "${Configs__opt[${index}]}" == "-P -f lua/user/treesitter.lua" ]
  then
    echo "${TEST_CONFIG_NAME} opt is correct"
  else
    echo "${TEST_CONFIG_NAME} opt is NOT correct"
    all_passed=
  fi
  if [ "${Configs__dir[${index}]}" == "-D nvim" ]
  then
    echo "${TEST_CONFIG_NAME} dir is correct"
  else
    echo "${TEST_CONFIG_NAME} dir is NOT correct"
    all_passed=
  fi
else
  echo "Failed to find ${TEST_CONFIG_NAME} array index"
  all_passed=
fi
TEST_CONFIG_NAME="foobarspam"
index=$(get_name_index "${TEST_CONFIG_NAME}")
if [ "${index}" ]
then
  echo "Found index for bogus config name"
  all_passed=
fi

if [ "${all_passed}" ]
then
  echo "OK: all tests passed"
else
  echo "NOT OK: at least one test failed"
fi
