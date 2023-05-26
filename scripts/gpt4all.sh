#!/bin/bash
#
# Download the GPT4ALL model used by codeexplain.nvim
#
# Set this to the model and version to download
# MODEL_URL="https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin"
MODEL_URL="https://gpt4all.io/models/ggml-vicuna-7b-1.1-q4_2.bin"

have_curl=$(type -p curl)
[ "$have_curl" ] || {
  echo "The curl command could not be located. Exiting."
  exit 1
}
[ -d "${HOME}/.codeexplain" ] || mkdir -p "${HOME}/.codeexplain"
if [ -f "${HOME}/.codeexplain/model.bin" ]
then
  echo "${HOME}/.codeexplain/model.bin already exists. Skipping download."
else
  curl -fsSL -o "${HOME}/.codeexplain/model.bin" "${MODEL_URL}"
  [ -f "${HOME}/.codeexplain/model.bin" ] || {
    curl -kfsSL -o "${HOME}/.codeexplain/model.bin" "${MODEL_URL}"
  }
fi
