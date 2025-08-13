#!/usr/bin/env bash
set -xeuo pipefail

systemctl enable podman.socket
systemctl disable NetworkManager-wait-online.service

systemctl enable nordvpnd
systemctl enable tailscaled
systemctl enable netbird
