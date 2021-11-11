# GCP Cloudshell Dotfiles

I find very annoying the default prompt in GCP's Cloud Shell. This repo fixes that. I'm using my own customized bash prompt based on [Riobard's Bash Powerline repo](https://github.com/riobard/bash-powerline).

## Installation

Run the installation script:

```bash
. ./install.sh
```

Source the new `.bash_profile`:

```bash
cd $HOME
source .bash_profile
```