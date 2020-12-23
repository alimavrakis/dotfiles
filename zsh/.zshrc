#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Ali Mavrakis <ali.mavrakis@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# enable profiling data
# zmodload zsh/zprof

# log
echo "Sourcing './zsh_ali'..."
#
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# source "${HOME}/.bash_profile"

# Customize to your needs...
# add yarn bin to PATH
export PATH="$(yarn global bin):$PATH"

# set default text editor
export VISUAL=vim
export EDITOR="$VISUAL"

# I don't what this does...should read up on it later
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

# print profiling info
#
