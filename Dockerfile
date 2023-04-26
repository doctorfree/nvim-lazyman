ARG ARCH
FROM ${ARCH}debian:stable-slim
SHELL ["/bin/bash", "-c"]

# TODO: optimize image size
# TODO: maybe build a dedicated base image with all dependencies included
# TODO: allow a specific version of Neovim to be installed

ARG TARGETOS
ARG TARGETARCH

ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Update system and install core packages/dependencies
RUN apt-get update \
&& apt-get install --no-install-recommends -y \
  apt-transport-https \
  autoconf \
  automake \
  ca-certificates \
  cmake \
  coreutils \
  curl \
  doxygen \
  fd-find \
  fzf \
  g++ \
  gettext \
  git \
  gnupg \
  libtool \
  libtool-bin \
  locales \
  make \
  npm \
  pkg-config \
  python3-pip \
  ripgrep \
  sudo \
  tar \
  unzip \
  wget \
  zip \
&& rm -rf /var/lib/apt/lists/* \
&& ln -s "$(which fdfind)" /usr/bin/fd \
&& ln -s "$(which python3)" /usr/bin/python \
&& sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && dpkg-reconfigure --frontend=noninteractive locales

# Add user 'nvim' and allow passwordless sudo
RUN adduser --disabled-password --gecos '' nvim \
&& adduser nvim sudo \
&& echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER nvim
WORKDIR /home/nvim

ENV HOME /home/nvim
ENV PATH=$PATH:/usr/local/bin/go/bin/:/home/nvim/.local/bin:/home/nvim/.local/bin/bin:/home/nvim/go/bin:/home/nvim/.cargo/bin
ENV GOPATH=/home/nvim/.local/share/go
ENV PATH=$PATH:$GOPATH/bin
ENV NVIM_APPNAME="nvim-Lazyman"

# Copy Neovim config into the image
RUN mkdir -p $HOME/.config/nvim-Lazyman
COPY --chown=nvim:nvim . $HOME/.config/nvim-Lazyman
RUN chmod +x $HOME/.config/nvim-Lazyman/lazyman.sh
# Initialize Neovim config and install plugins with Lazy
RUN $HOME/.config/nvim-Lazyman/lazyman.sh -y -z

ENTRYPOINT ["NVIM_APPNAME=nvim-Lazyman", "/bin/bash", "-c", "nvim"]
