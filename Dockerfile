FROM ubuntu

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ninja-build git gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /app

CMD bash -c "rm -rf neovim \
  && rm -rf /app/dist \
  && git clone --depth 1 https://github.com/neovim/neovim.git \
  && cd neovim \
  && make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/app/dist install \
  && rm -rf /app/neovim \
  "
