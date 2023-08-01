#!/bin/bash
#
ps -ef | grep ' nvim ' | grep -v grep | while read l
do
  pid=$(echo "$l" | awk ' { print $2 } ')
  kill ${pid}
done
ps -ef | grep 'nvim' | grep 'headless' | grep -v grep | while read l
do
  pid=$(echo "$l" | awk ' { print $2 } ')
  kill -9 ${pid}
done
ps -ef | grep 'nvim' | grep 'local/share/bob' | grep -v grep | while read l
do
  pid=$(echo "$l" | awk ' { print $2 } ')
  kill -9 ${pid}
done
