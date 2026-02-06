# Hyprland Arch Linux Configuration

Personal Hyprland configuration files for Arch Linux.

## Prerequisites

Install the required packages:

```bash
sudo pacman -S hyprland waybar wofi kitty dunst grim slurp wl-clipboard
```

## Installation

1. Clone this repository
2. Symlink the config files:

```bash
ln -sf ~/hyprland-archlinux/hypr ~/.config/hypr
ln -sf ~/hyprland-archlinux/waybar ~/.config/waybar
ln -sf ~/hyprland-archlinux/wofi ~/.config/wofi
ln -sf ~/hyprland-archlinux/kitty ~/.config/kitty
```

## Keybindings

| Key | Action |
|-----|--------|
| Super + Return | Terminal (kitty) |
| Super + D | App launcher (wofi) |
| Super + Q | Close window |
| Super + V | Toggle floating |
| Super + F | Fullscreen |
| Super + 1-0 | Switch workspace |
| Super + Shift + 1-0 | Move window to workspace |
| Print | Screenshot region |
| Shift + Print | Screenshot full screen |

## Structure

- `hypr/` - Hyprland configuration
- `waybar/` - Status bar configuration
- `wofi/` - Application launcher configuration
- `kitty/` - Terminal configuration
- `scripts/` - Helper scripts
