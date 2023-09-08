#!/bin/bash

get_terminal() {
    pid=$$
    while true; do
        pid=$(ps -h -o ppid -p $pid 2>/dev/null)
        ps -h -o comm -p $pid 2>/dev/null | while read psout
        do
          case "${psout}" in
            (alacritty) echo "alacritty";return;;
            (gnome-terminal) echo "gnome-terminal";return;;
            (kitty) echo "kitty";return;;
            (tilix) echo "tilix";return;;
            (wezterm) echo "wezterm";return;;
            (xterm) echo "xterm";return;;
            (rxvt) echo "rxvt";return;;
            (python) if [ ! -z "$(ps -h -o args -p $pid 2>/dev/null | grep guake)" ]; then echo "Running in Guake"; return; fi ;;
          esac
        done
        [[ $(echo $pid) == 1 ]] && break
    done
}
get_terminal
