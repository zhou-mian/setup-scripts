#!/bin/bash

# Install Wine on KDE Neon 5.27 (Ubuntu LTS 22.04.2)

sudo dpkg --add-architecture i386   # Add i386 architecture
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources

sudo apt install libpoppler-glib8:{i386,amd64}=22.02.0-2ubuntu0.1 # Install Ubuntu version for both architectures

sudo apt install --install-recommends winehq-stable

wine --version
