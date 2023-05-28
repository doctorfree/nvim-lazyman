#!/bin/bash
#
have_go=$(type -p go)
if [ "${have_go}" ]
then
  go install github.com/go-delve/delve/cmd/dlv@latest
else
  echo "The go binary not found in the execution path."
  echo "Install go or add it to your PATH and rerun this script."
  exit 1
fi
