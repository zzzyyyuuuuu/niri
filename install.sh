#!/bin/bash
set -e

# ==============
#   Niri Setup #
# ==============

# ---- 1. Update & Install base packages ----
echo "[*] Updating system and installing essentials..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git stow ttf-jetbrains-mono-nerd rofi-wayland playerctl\
    firefox unzip wget curl base-devel
echo "[*] System updated and essential packages installed successfully..."


echo "[*] INSTALLING YAY PACKAGE MANAGER..."
sudo pacman -S --needed git base-devel
cd ~
git clone https://aur.archlinux.org/yay.git
cd ~/yay
makepkg -si
yay -Syu
echo "[*] INSTALLED YAY PACKAGE MANAGER..."


cd ~/niri/settings


echo "[*] Stowing niri config file..."
if [ -d "$HOME/.config/niri" ]; then
    rm -r "$HOME/.config/niri"
fi

stow niri
echo "[*] Sucessfully stowed niri config file..."


echo "[*] INSTALLING PYWAL16..."
yay -S python-pywal16 --noconfirm
stow pywal
echo "[*] INSTALLED AND STOWED PYWAL16..."


echo "[*] INSTALLING AND SETTING UP TERMINAL..."
sudo pacman -S kitty
stow kitty
echo "[*] TERMINAL SETUP COMPLETE..."


echo "[*] INSTALLING ROFI..."
sudo pacman -S rofi-wayland
stow rofi
echo "[*] ROFI SETUP COMPLETE..."


echo "[*] SETTING UP POLYBAR"
sudo pacman -S waybar 
stow waybar
mkdir -p $HOME/.local/bin
stow scripts
echo "[*] waybar SETUP COMPLETE..."


echo "[*] SETTING UP PICOM"
sudo pacman -S picom
stow 
echo "[*] PICOM SETUP COMPLETE..."


echo "[*] SETTING UP WALLPAPERS"
stow wallpapers
echo "[*] WALLPAPERS SETUP COMPLETE..."

echo "[*] SETTING UP FASTFETCH"
stow fastfetch
echo "[*] FASTFETCH SETUP COMPLETE..."