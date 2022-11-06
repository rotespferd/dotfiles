#!/bin/bash

# Visual Studio Code :: Package list
pkglist=(
ms-python.python
oderwat.indent-rainbow
2gua.rainbow-brackets
astro-build.astro-vscode
coolbear.systemd-unit-file
Equinusocio.vsc-community-material-theme
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
PKief.material-icon-theme
rubenverg.bootstrap-product-icons
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
