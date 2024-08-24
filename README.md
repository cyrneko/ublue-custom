# ublue-custom-niri

This is a custom image built on top of Sericea-Nvidia from the [Universal-Blue](https://universal-blue.org) project.

> (Info below may not always be up-to-date)

it includes some repos to pull in the following packages:

- `tailscale`
- `xwayland-satellite` (will eventually repackage myself)
- `niri` (stable)

It has the following package overrides:
remove:

- `firefox`
- `mako` (I use dunst instead)
- `alacritty` (I use kitty instead)

In the future it will also include my dotfiles, but I am still working on that.

As for _right now_, my dotfiles can be found on the main branch of https://codeberg.org/cyrneko/dotfiles (to be updated soon)

Because Niri currently also doesn't support system-wide configuration, I cannot yet include a Niri Configuration into the image. Please pull it manually and move it to `$HOME/.config/niri` instead.
