#!/bin/bash


if [[ -v DEV_CODESPACE_TOKEN ]]; then
  git config --global url."https://$DEV_CODESPACE_TOKEN@github.com/".insteadOf "https://github.com/"
fi


cd /
curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash


mkdir ~/.kube/
ln -s $CODESPACE_VSCODE_FOLDER/kubeconfig ~/.kube/config
