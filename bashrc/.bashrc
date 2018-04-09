if [ "$TERM" = "putty" ]; then
    export LC_ALL=C
else
    export LC_ALL=en_US.utf8
fi
export CVSEDITOR=vim
export CVS_RSH=ssh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$HOME/.yarn/bin:$PATH"
