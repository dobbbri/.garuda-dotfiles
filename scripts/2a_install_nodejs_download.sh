#!/bin/bash
# to make execurable
# chmod +x install_nodejs.sh

echo "- Dowload NodeJs installer -----------------------------------------------"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

fisher install jorgebucaran/nvm.fish

nvm ls-remote --lts

nvm install 22

echo "- Install NPM packages --------------------------------------------------"
npm i -g @ast-grep/cli npm-check-updates

node -v
npm -v
nvm -v
