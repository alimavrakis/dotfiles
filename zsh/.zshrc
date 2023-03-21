#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Ali Mavrakis <ali.mavrakis@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# log
echo "Sourcing '~/.zshrc'…"

echo "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  echo "Sourcing '~/.zprezto/init.zsh'…"
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
  zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt'
fi

# Enable vi mode
set -o vi

# Customizations below this line
source "${HOME}/.profile"

# set default text editor
export VISUAL=vim
export EDITOR="$VISUAL"

setopt EXTENDED_GLOB

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# nvm use 10.17.0

#
# Expands ... to ../..
#
function rationalize-dot() {
    if [[ $LBUFFER = *.. ]]; then
        LBUFFER+='/..'
    else
        LBUFFER+='.'
    fi
}
zle -N rationalize-dot
bindkey '.' rationalize-dot

# Go up an abritrary number of directories
# Use with 'up' or 'up 5' to go up N directories
function up {
    if [[ "$#" < 1 ]] ; then
        cd ..
    else
        CDSTR=""
        for i in {1..$1} ; do
            CDSTR="../$CDSTR"
        done
        cd $CDSTR
    fi
}

source ~/.zshrc_anduril
export PATH=$PATH:$HOME/go/bin
