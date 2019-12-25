#!/bin/bash

# Only install if package does not exist
if [ -d "/home/${1}/.oh-my-zsh" ]; then
  exit -1
else
  sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi