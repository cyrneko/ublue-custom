#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

curl "https://pkgs.tailscale.com/stable/fedora/tailscale.repo" > /etc/yum.repos.d/tailscale.repo
curl "https://copr.fedorainfracloud.org/coprs/yalter/niri/repo/fedora-${RELEASE}/yalter-niri-fedora-40.repo" > /etc/yum.repos.d/yalter-niri-fedora-40.repo
curl "https://copr.fedorainfracloud.org/coprs/errornointernet/packages/repo/fedora-${RELEASE}/errornointernet-packages-fedora-40.repo" > /etc/yum.repos.d/errornointernet-packages-fedora-40.repo
curl "https://copr.fedorainfracloud.org/coprs/tofik/nwg-shell/repo/fedora-${RELEASE}/tofik-nwg-shell-fedora-40.repo" > /etc/yum.repos.d/tofik-nwg-shell-fedora-40.repo
curl "https://copr.fedorainfracloud.org/coprs/alebastr/sway-extras/repo/fedora-${RELEASE}/alebastr-sway-extras-fedora-40.repo" > /etc/yum.repos.d/alebastr-sway-extras-fedora-40.repo
curl "https://repo.librewolf.net/librewolf.repo" > /etc/yum.repos.d/librewolf.repo
rpm-ostree install bat eza kitty tailscale zsh niri xwayland-satellite thunar wf-recorder nwg-look SDL2 swww wlsunset opendoas librewolf
rpm-ostree override remove mako alacritty firefox firefox-langpacks foot xarchiver

mkdir git && cd git
mkdir -p /etc/niri /etc/waybar /etc/xdg/fuzzel
git clone --depth 1 https://codeberg.org/cyrneko/dotfiles
cp -r ./dotfiles/niri/config.kdl /etc/niri/config.kdl
cp -r ./dotfiles/waybar/config.jsonc ./dotfiles/waybar/style.css /etc/xdg/waybar/
cp -r ./dotfiles/fuzzel/fuzzel.ini /etc/xdg/fuzzel/fuzzel.ini
cp -r ./dotfiles/etc-/doas.conf /etc/doas.conf
cd ..
rm -rf ./git/

systemctl enable podman.socket
