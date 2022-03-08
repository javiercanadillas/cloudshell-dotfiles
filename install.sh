#!/usr/bin/env bash
REPO_NAME="cloudshell-dotfiles"
DOTFILES_LOC="${HOME}/.dotfiles"
BAT_REPO_URL="https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-musl_0.18.3_amd64.deb"
LOCAL_BIN_DIR="${HOME}/bin"
GIT_USERNAME="Javier Cañadillas"
GIT_EMAIL="javiercm@google.com"

# Basic Git Configuration
git_config(){
  git config --global user.name "$GIT_USERNAME"
  git config --global user.email "GIT_PASSWORD"
}

## Install Bat, an improved and colorful cat
install_bat(){
  command -v wget >/dev/null  2>&1 && wget "${BAT_REPO_URL}"
  sudo dpkg -i *.deb
  mkdir -p "${LOCAL_BIN_DIR}"
  command -v batcat >/dev/null  2>&1 && ln -s /usr/bin/batcat "${LOCAL_BIN_DIR}/bat" 
  rm *.deb
}

# Rename repo directory
mv "${HOME}/${REPO_NAME}" "${DOTFILES_LOC}"
git_config() # Configure git
install_bat() # Install command line bat
# Link relevant files to $HOME
ln -s "${DOTFILES_LOC}/bash_profile" "${HOME}/.bash_profile"
# Remind the user to source .bash_profile
pushd $HOME
source .bash_profile
