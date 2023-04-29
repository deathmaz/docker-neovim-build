#!/bin/bash

git clone --depth 1 https://github.com/neovim/neovim.git \
  && docker-compose up --remove-orphans \
  && docker-compose down --remove-orphans \
  && mkdir -p $HOME/execs \
  && rm -rf $HOME/execs/neovim && cp -r dist $HOME/execs/neovim \
