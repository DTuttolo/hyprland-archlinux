# AGENTS.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Overview

This is a Hyprland dotfiles repository for Arch Linux. Configuration files are symlinked from this repo to `~/.config/`.

## Validation

Check Hyprland config syntax:
```bash
hyprctl reload
```

View Hyprland logs for errors:
```bash
cat /tmp/hypr/$(ls -t /tmp/hypr/ | head -1)/hyprland.log | tail -50
```

## Deployment

Configs are deployed via symlinks to `~/.config/`:
```bash
ln -sfn ~/hyprland-archlinux/hypr ~/.config/hypr
ln -sfn ~/hyprland-archlinux/waybar ~/.config/waybar
ln -sfn ~/hyprland-archlinux/wofi ~/.config/wofi
ln -sfn ~/hyprland-archlinux/kitty ~/.config/kitty
```

## Configuration Notes

- **Keyboard layout**: German (`de`) - defined in `hypr/hyprland.conf` under `input.kb_layout`
- **Main modifier key**: `SUPER` (Windows key)
- **Default terminal**: kitty
- **App launcher**: wofi
- **Status bar**: waybar
- **Notifications**: dunst

## Architecture

```
hypr/hyprland.conf    → Main Hyprland compositor config (keybinds, appearance, behavior)
waybar/               → Status bar config (modules, styling)
wofi/                 → Application launcher config
kitty/                → Terminal emulator config
scripts/              → Helper scripts for keybindings and automation
```

Changes to `hypr/hyprland.conf` take effect after running `hyprctl reload` or restarting Hyprland.
