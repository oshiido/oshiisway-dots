#!/bin/bash
### environment variables ###
#export QT_QPA_PLATFORMTHEME=qt6ct
export XDG_SCREENSHOTS_DIR=$HOME/Pictures/Screenshots
export XDG_SESSION_TYPE=wayland
export KITTY_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
systemctl --user stop wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user start wireplumber
