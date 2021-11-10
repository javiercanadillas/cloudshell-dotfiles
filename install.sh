#!/usr/bin/env bash
REPO_NAME="csp"

# Rename repo directory
mv "${HOME/REPO_NAME}" "${HOME/.dotfiles}"

# Link relevant files to $HOME
ln -s "${HOME}"/.bash_profile "${HOME}/${REPO_NAME}/bash_profile"