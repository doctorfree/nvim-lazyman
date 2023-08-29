#!/bin/bash

rm -f /tmp/plugin_urls.txt
touch /tmp/plugin_urls.txt
for confdir in $HOME/.config/lazyman/*
do
  find "${confdir}" -name packer_compiled.lua -print0 | \
    xargs -0 grep url | grep = | awk -F '=' ' { print $2 } ' | \
    sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | \
    sed -e 's/"//g' -e "s/'//g" >> /tmp/plugin_urls.txt
done
sort /tmp/plugin_urls.txt | uniq > /tmp/sorted_plugin_urls.txt
