export PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -e ~/.profile ]; then
    . ~/.profile
fi

export PATH=/usr/local/sbin:$PATH




