# ublue-custom-niri

This is a custom image built on top of Sericea-Nvidia from the [Universal-Blue](https://universal-blue.org) project.

The main purpose of this is to provide myself a uBlue image with the `niri` wayland compositor pre-installed, that I can then apply to all my devices.

> (Info below may not always be up-to-date or complete)

it includes some repos to pull in the following packages:

- `tailscale`
- `xwayland-satellite` (will eventually repackage myself)
- `niri` (stable)
- `nwg-look`
- `swww`
- `opendoas` / `doas` (comes preconfigured to be sudo-esque)
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
and one non-copr repo:
- https://tailscale.com / https://pkgs.tailscale.com/stable/fedora/tailscale.repo

Because Niri currently also doesn't support system-wide configuration, I cannot yet include a Niri Configuration into the image. Please pull it manually and move it to `$HOME/.config/niri` instead:

```bash
git clone --depth 1 https://codeberg.org/cyrneko/dotfiles -b main
cp -r ./dotfiles/niri ~/.config/
```
