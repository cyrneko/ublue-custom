#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

curl "https://pkgs.tailscale.com/stable/fedora/tailscale.repo" > /etc/yum.repos.d/tailscale.repo
curl "https://copr.fedorainfracloud.org/coprs/yalter/niri/repo/fedora-40/yalter-niri-fedora-40.repo" > /etc/yum.repos.d/yalter-niri-fedora-40.repo
curl "https://copr.fedorainfracloud.org/coprs/errornointernet/packages/repo/fedora-40/errornointernet-packages-fedora-40.repo" > /etc/yum.repos.d/errornointernet-packages-fedora-40.repo
rpm-ostree install bat eza kitty tailscale zsh niri xwayland-satellite nautilus wf-recorder

systemctl enable podman.socket
