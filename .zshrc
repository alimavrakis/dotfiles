#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# fix npm cert issues
export NPM_CONFIG_CAFILE="/path/to/ca-bundle.crt"
export NPM_CONFIG_REGISTRY="https://artifactory.palantir.build/artifactory/api/npm/all-npm/"

# set default text editor
export VISUAL=vim
export EDITOR="$VISUAL"

# I don't what this does...should read up on it later
# setopt EXTENDED_GLOB

# .. will already work as 'cd ..' in prezto ZSH
# Go up two directories
alias -g ...='cd ../..'
# Go up three directories
alias -g ....='cd ../../..'
# Go up four directories
alias -g .....='cd ../../../..'

#
# Expands .... to ../..
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

