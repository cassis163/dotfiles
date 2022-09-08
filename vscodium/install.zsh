#!/bin/sh

# Extensions
extension_ids=(
    esbenp.prettier-vscode
    EditorConfig.EditorConfig
    ms-azuretools.vscode-docker
)

for i in ${extension_ids[@]}; do
    codium --install-extension $i
done
