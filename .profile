source ~/.bashrc

alias ls='ls -G'
alias ll='ls -la'


##
# Your previous /Users/otis/.profile file was backed up as /Users/otis/.profile.macports-saved_2012-10-30_at_05:53:08
##

# MacPorts Installer addition on 2012-10-30_at_05:53:08: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2009-09-05_at_20:16:34: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=$PATH:/Users/otis/bin

alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'

# Tomcat business
# export JAVA_HOME=/Library/Java/Home
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export CATALINA_HOME=/Library/Tomcat/Home
export CATALINA_LIB=$CATALINA_HOME/common/lib


if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\[\033[0;31m\]<\t>\[\033[0;34m\][\u@\h:\w]\n\[\033[1;32m\]\$(parse_git_branch) \[\033[0;34m\]\$  \[\033[0m\]"



