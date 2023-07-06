#!/bin/bash
#
ps -ef | grep ' nvim ' | grep -v grep | while read l
do
  pid=$(echo "$l" | awk ' { print $2 } ')
  kill ${pid}
done
