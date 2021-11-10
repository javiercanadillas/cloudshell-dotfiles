#!/usr/bin/env bash
REPO_NAME="cloudshell-dotfiles"

# Rename repo directory
mv "${HOME}/${REPO_NAME}" "${HOME}/.dotfiles"

# Link relevant files to $HOME
ln -s "${HOME}"/.bash_profile "${HOME}/${REPO_NAME}/bash_profile"