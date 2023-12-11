#!/bin/bash
#

LOCAL=".local/kitty.app"
printf "\n\tInstalling Kitty terminal emulator ..."
curl --silent --location \
  https://sw.kovidgoyal.net/kitty/installer.sh >/tmp/kitty-$$.sh
[ $? -eq 0 ] || {
  rm -f /tmp/kitty-$$.sh
  curl --insecure --silent --location \
    https://sw.kovidgoyal.net/kitty/installer.sh >/tmp/kitty-$$.sh
  cat /tmp/kitty-$$.sh | sed -e "s/curl -/curl -k/" >/tmp/k$$
  cp /tmp/k$$ /tmp/kitty-$$.sh
  rm -f /tmp/k$$
}
if [ -s /tmp/kitty-$$.sh ]; then
  sh /tmp/kitty-$$.sh launch=n >/dev/null 2>&1
  rm -f /tmp/kitty-$$.sh
  # Create a symbolic link to add kitty to PATH
  [ -d ~/.local/bin ] || mkdir -p ~/.local/bin
  if [ -x ~/${LOCAL}/bin/kitty ]; then
    [ -x ~/.local/bin/kitty ] || {
      ln -s ~/${LOCAL}/bin/kitty ~/.local/bin/
    }
  else
    printf "\nUnable to create Kitty link to ~/.local/bin/\n"
  fi
  # Link the kitty man pages somewhere it can be found by the man command
  LINMAN="${HOME}/${LOCAL}/share/man"
  [ -d ~/.local/share/man/man1 ] || mkdir -p ~/.local/share/man/man1
  [ -f ~/.local/share/man/man1/kitty.1 ] || {
    [ -d ${HOME}/.local/share/man/man1 ] || {
      mkdir -p ${HOME}/.local/share/man/man1
    }
    [ -f "${LINMAN}/man1/kitty.1" ] && {
      ln -s "${LINMAN}/man1/kitty.1" ~/.local/share/man/man1/
    }
  }
  [ -d ~/.local/share/man/man5 ] || mkdir -p ~/.local/share/man/man5
  [ -f ~/.local/share/man/man5/kitty.conf.5 ] || {
    [ -d ${HOME}/.local/share/man/man5 ] || {
      mkdir -p ${HOME}/.local/share/man/man5
    }
    [ -f "${LINMAN}/man5/kitty.conf.5" ] && {
      ln -s "${LINMAN}/man5/kitty.conf.5" ~/.local/share/man/man5/
    }
  }
  # Place the kitty.desktop file somewhere it can be found by the OS
  [ -d ~/.local/share/applications ] || mkdir -p ~/.local/share/applications
  [ -f "${HOME}/${LOCAL}/share/applications/kitty.desktop" ] && {
    [ -f ~/.local/share/applications/kitty.desktop ] || {
      cp ~/${LOCAL}/share/applications/kitty.desktop \
        ~/.local/share/applications/
    }
  }
  # If you want to open text files and images in kitty via your file manager
  # also add the kitty-open.desktop file
  [ -f "${HOME}/${LOCAL}/share/applications/kitty-open.desktop" ] && {
    [ -f ~/.local/share/applications/kitty-open.desktop ] || {
      cp ~/${LOCAL}/share/applications/kitty-open.desktop \
        ~/.local/share/applications/
    }
  }
  # Update the paths to the kitty and its icon in the kitty.desktop file(s)
  for desktop in "${HOME}"/.local/share/applications/kitty*.desktop; do
    [ "${desktop}" == "${HOME}/.local/share/applications/kitty*.desktop" ] && continue
    [ -f /home/${MPP_USER}/${LOCAL}/share/icons/hicolor/256x256/apps/kitty.png ] && {
      sed -i "s|Icon=kitty|Icon=/home/${MPP_USER}/${LOCAL}/share/icons/hicolor/256x256/apps/kitty.png|g" "${desktop}"
    }
    [ -x /home/${MPP_USER}/${LOCAL}/bin/kitty ] && {
      sed -i "s|Exec=kitty|Exec=/home/${MPP_USER}/${LOCAL}/bin/kitty|g" "${desktop}"
    }
  done
  printf " done!\n"
else
  printf "\n${BOLD}ERROR:${NORM} Download of kitty installation script failed"
  printf "\nSee https://sw.kovidgoyal.net/kitty/binary/#manually-installing"
  printf "\nto manually install the kitty terminal emulator\n"
fi

# Install the Kitty terminfo entry
KITERM="${HOME}/.terminfo/x/xterm-kitty"
MATERM="${HOME}/.terminfo/78/xterm-kitty"
[ -f "${KITERM}" ] || [ -f "${MATERM}" ] || {
  [ -d ${HOME}/.terminfo ] || mkdir -p ${HOME}/.terminfo
  [ -d ${HOME}/.terminfo/x ] || mkdir -p ${HOME}/.terminfo/x
  [ -d ${HOME}/.terminfo/78 ] || mkdir -p ${HOME}/.terminfo/78
  have_tic=$(type -p tic)
  [ "${have_tic}" ] && {
    [ -f "${HOME}/${LOCAL}/lib/kitty/terminfo/kitty.terminfo" ] && {
      tic -x -o ${HOME}/.terminfo \
        "${HOME}/${LOCAL}/lib/kitty/terminfo/kitty.terminfo" >/dev/null 2>&1
    }
  }
  [ -f "${KITERM}" ] || [ -f "${MATERM}" ] || {
    if [ -f "${HOME}/${LOCAL}/lib/kitty/terminfo/x/xterm-kitty" ]; then
      cp "${HOME}/${LOCAL}/lib/kitty/terminfo/x/xterm-kitty" "${KITERM}"
    else
      if [ -f "${HOME}/${LOCAL}/share/terminfo/x/xterm-kitty" ]; then
        cp "${HOME}/${LOCAL}/share/terminfo/x/xterm-kitty" "${KITERM}"
      else
        printf "\nUnable to create Kitty terminfo entry ${KITERM}\n"
      fi
    fi
  }
}
