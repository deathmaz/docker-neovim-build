FROM ubuntu

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ninja-build gettext libtool libtool-bin autoconf automake make cmake g++ pkg-config unzip curl doxygen \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /app

CMD bash -c "rm -rf /app/dist \
  && cd neovim \
  && make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/app/dist install \
  && rm -rf /app/neovim \
  "
