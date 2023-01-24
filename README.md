# dotfiles

Ali's repository of configuration files

## Quick Start

### Clone this repository

Start by cloning this repository into your dev directory by running the following command:
`$ git clone git@github.com:alimavrakis/dotfiles.git ~/path/to/dev/directory`

### GNU Stow

GNU stow is a simple utility to make configuration file management easier. You can still symlink files from this repo by hand, but stow will save you a lot of time. With stow installed:

`$ cd ~/path/to/dev/directory/dotfiles`
`$ stow bash --target=$HOME`

### That's All Folks!

Yup. That's it. You could always copy the files manually, but ask yourself, "Self, why?" Fork this repository to keep all of your configuration files in one place, clone them anywhere, and boost your productivity.
