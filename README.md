# ublue-custom-niri

This is a custom image built on top of Sericea-Nvidia from the [Universal-Blue](https://universal-blue.org) project.

The main purpose of this is to provide myself a uBlue image with the `niri` wayland compositor pre-installed, that I can then apply to all my devices. This also means that **many of the changes here are very opinionated.** You'll find that things won't quite work out of the box due to image overrides and the likes if you don't know what you're doing.

> (Info below may not always be up-to-date or complete)

it includes some repos to pull in the following packages:

- `tailscale`
- `xwayland-satellite` (will eventually repackage myself)
- `niri` (stable)
- `nwg-look`
- `swww`
- `opendoas` / `doas` (comes preconfigured to be sudo-esque)
- `librewolf`
> (sudo won't *yet* be removed from the image and/or disabled by default.)

It has the following package overrides:
remove:

- `firefox`
- `mako` (I use dunst instead)
- `alacritty` (I use kitty instead)
- `foot` (sway image leftover)
- `xarchiver` (sway image leftover)

At the request of a friend, `SDL2` is included by default.

For most of the above packages an external repo had to be added. These are as follows:

- https://copr.fedorainfracloud.org/coprs/alebastr/sway-extras (swww)
- https://copr.fedorainfracloud.org/coprs/tofik/nwg-shell (nwg-look)
- https://copr.fedorainfracloud.org/coprs/errornointernet/packages (xwayland-satellite)
- https://copr.fedorainfracloud.org/coprs/yalter/niri
and two non-copr repos:
- https://tailscale.com / https://pkgs.tailscale.com/stable/fedora/tailscale.repo
- https://librewolf.net / https://repo.librewolf.net/librewolf.repo

## Configuration

This image will automatically include my `dunst`, `waybar`, `fuzzel` and `niri` configurations. If you do not want those, fork the repo and comment the relevant block (or parts of it) out or override my config by placing your own in `~/.config`.
