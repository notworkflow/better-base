#!/usr/bin/bash
set -xeuo pipefail

dnf5 install -y \
    tmux \
    kleopatra \
    gnome-disk-utility \
    kitty \
    zsh \
    gnome-calculator \
    powerline-fonts \
    veracrypt \
    nordvpn \
    tailscale \
    bash-completion \
    code \
    buildah \
    yadm \
    git \
    gnupg2 \
    dialog \
    freerdp \
    iproute \
    libnotify \
    kde-partitionmanager \
    coreos-installer \
    netcat \
    nmap-ncat \
    freerdp \
    golang \
    tinygo \
    upx \
    netbird \
    netbird-ui

