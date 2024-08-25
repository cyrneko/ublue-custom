# ublue-custom-niri

This is a custom image built on top of Sericea-Nvidia from the [Universal-Blue](https://universal-blue.org) project.

> (Info below may not always be up-to-date or complete)

it includes some repos to pull in the following packages:

- `tailscale`
- `xwayland-satellite` (will eventually repackage myself)
- `niri` (stable)
- `nwg-look`

It has the following package overrides:
remove:

- `firefox`
- `mako` (I use dunst instead)
- `alacritty` (I use kitty instead)
- `foot` (sway leftover)
- `xarchiver` (sway leftover)

Because Niri currently also doesn't support system-wide configuration, I cannot yet include a Niri Configuration into the image. Please pull it manually and move it to `$HOME/.config/niri` instead:

```bash
git clone --depth 1 https://codeberg.org/cyrneko/dotfiles -b main
cp -r ./dotfiles/niri ~/.config/
```
