#!/bin/bash
set -e

echo "Setting up androidhyper repository..."

if grep -q "\[androidhyper\]" /etc/pacman.conf; then
    echo "Repository already configured."
else
    echo -e "\n[androidhyper]\nSigLevel = Optional TrustAll\nServer = https://androidhyperofficial.github.io/arch-repo" >> /etc/pacman.conf
    echo "Repository added successfully."
fi

echo "Syncing databases and installing superinstall..."
pacman -Sy --noconfirm
pacman -S superinstall --noconfirm

echo "Installation complete!"
