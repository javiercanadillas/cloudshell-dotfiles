#!/usr/bin/env bash
REPO_NAME="cloudshell-dotfiles"
DOTFILES_LOC="${HOME}/.dotfiles"

# Rename repo directory
mv "${HOME}/${REPO_NAME}" "${DOTFILES_LOC}"

# Link relevant files to $HOME
ln -s "${DOTFILES_LOC}"/bash_profile" "${HOME}"/.bash_profile