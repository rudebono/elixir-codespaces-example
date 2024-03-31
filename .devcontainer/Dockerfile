ARG UBUNTU_VERSION=jammy-20240125
ARG ERLANG_VERSION=26.2.3
ARG ELIXIR_VERSION=1.16.2
FROM hexpm/elixir:${ELIXIR_VERSION}-erlang-${ERLANG_VERSION}-ubuntu-${UBUNTU_VERSION}
RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get -y install --no-install-recommends \
    ca-certificates \
    curl \
    gnupg \
    unzip \
    inotify-tools \
    btop \
    #
    # features
    && curl -sSL https://github.com/devcontainers/features/archive/refs/heads/main.zip -o /tmp/features-main.zip \
    && unzip /tmp/features-main.zip -d /tmp \
    #
    # features/common-utils
    && INSTALLZSH=false \
    CONFIGUREZSHASDEFAULTSHELL=false \
    INSTALLOHMYZSH=false \
    INSTALLOHMYZSHCONFIG=false \
    UPGRADEPACKAGES=true \
    USERNAME=vscode \
    UID=1000 \
    GID=1000 \
    NONFREEPACKAGES=false \
    /bin/bash /tmp/features-main/src/common-utils/install.sh \
    #
    # features/git-lfs
    && /bin/bash /tmp/features-main/src/git-lfs/install.sh \
    #
    # features/github-cli
    && /bin/bash /tmp/features-main/src/github-cli/install.sh \
    #
    # clean
    && apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /tmp/*
