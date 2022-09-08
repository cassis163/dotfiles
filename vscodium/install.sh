#!/bin/bash

# Extensions
pkglist=(
    esbenp.prettier-vscode
    EditorConfig.EditorConfig
    ms-azuretools.vscode-docker
)

for i in ${pkglist[@]}; do
    code --install-extension $i
done
