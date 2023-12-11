#!/bin/bash

export PATH="${HOME}/bin:${HOME}/.local/bin:$PATH"
export NVM_DIR="${HOME}/.nvm"
export NODE_VERSION="20.9.0"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
. ${NVM_DIR}/nvm.sh
nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}
nvm use default
