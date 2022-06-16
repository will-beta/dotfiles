#!/bin/bash

if [[ -v DEV_CODESPACE_TOKEN ]]; then
  git config --global url."https://$DEV_CODESPACE_TOKEN@github.com/".insteadOf "https://github.com/"
fi
