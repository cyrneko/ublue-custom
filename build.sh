#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# as a reminder, Merkuro is the KDE Calendar, you dummy /s
curl "https://pkgs.tailscale.com/stable/fedora/tailscale.repo" | tee /etc/yum.repos.d/tailscale.repo
curl "https://copr.fedorainfracloud.org/coprs/yalter/niri/repo/fedora-40/yalter-niri-fedora-40.repo" | tee /etc/yum.repos.d/
rpm-ostree install bat eza kitty merkuro tailscale zsh niri

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
