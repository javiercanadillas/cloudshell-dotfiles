#!/usr/bin/env bash
REPO_NAME="cloudshell-dotfiles"
DOTFILES_LOC="${HOME}/.dotfiles"
BAT_REPO_URL="https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-musl_0.18.3_amd64.deb"
LOCAL_BIN_DIR="${HOME}/bin"

# Rename repo directory
mv "${HOME}/${REPO_NAME}" "${DOTFILES_LOC}"

# Install useful tools
## Install Bat, an improved and colorful cat
command -v wget >/dev/null  2>&1 || wget "${BAT_REPO_URL}"
sudo dpkg -i *.deb
mkdir -p "${LOCAL_BIN_DIR}"
command -v batcat >/dev/null  2>&1 || ln -s /usr/bin/batcat "${LOCAL_BIN_DIR}/bat" 
rm *.deb

# Link relevant files to $HOME
ln -s "${DOTFILES_LOC}/bash_profile" "${HOME}/.bash_profile"

# Remind the user to source .bash_profile
pushd $HOME
source .bash_profile
