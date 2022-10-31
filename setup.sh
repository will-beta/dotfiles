#!/bin/bash


if [[ -v DEV_CODESPACE_TOKEN ]]; then
  git config --global url."https://$DEV_CODESPACE_TOKEN@github.com/".insteadOf "https://github.com/"
fi

if [[ -v GITLAB_FOSUN_COM_TOKEN ]]; then
  git config --global url."https://$GITLAB_FOSUN_COM_TOKEN@gitlab.fosun.com/".insteadOf "https://gitlab.fosun.com/"
fi


cd /
curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash


mkdir ~/.kube/
ln -s $CODESPACE_VSCODE_FOLDER/kubeconfig ~/.kube/config
