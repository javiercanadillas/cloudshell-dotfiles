###################################################################
# Bash_profile .dotfile - DO NOT make customizations in this file,#
# use .bash_profile_local instead.                                #
###################################################################
DOTFILES_LOC="${HOME}/.dotfiles"

## Source the existing bashrc file, make no distiction between``
## interactive and non-interactive shells
if [ -f "${HOME}/.bashrc" ]; then
  source "${HOME}/.bashrc"
fi

# Enable rich color in the terminal
export TERM=xterm-256color

## PROMPT ##
## Enable customized prompt (Bash powerline)
source "${DOTFILES_LOC}/prompt"

## Substitute the VSCode command by cloud shell editor
function code {
  cloudshell edit "${@}"
}

## Include local bin dir in PATH
export PATH="${PATH}:${HOME}/bin"