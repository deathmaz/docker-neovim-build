#!/bin/bash

docker-compose up \
  && docker-compose down \
  && rm -rf $HOME/execs/neovim && cp -r dist $HOME/execs/neovim
