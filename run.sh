#!/bin/bash

git clone --depth 1 https://github.com/neovim/neovim.git \
  && docker-compose up \
  && docker-compose down \
  && rm -rf $HOME/execs/neovim && cp -r dist $HOME/execs/neovim \
