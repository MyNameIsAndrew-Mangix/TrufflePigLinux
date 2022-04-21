#!/bin/bash
set -e

git init
git config --global user.name "Andrew Klinsic"
git config --global user.email "andrewklinsic@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=10800'
git config --global push.default simple

tput setaf 2
echo "Git setup done"
tput setaf 7