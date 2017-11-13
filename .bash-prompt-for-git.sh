#!/usr/bin/env bash

# debian, ubuntu and so on
GIT_PROMPT_SH=/usr/lib/git-core/git-sh-prompt

# newtons vegetable with brew installed
if [ ! -d $(dirname $GIT_PROMPT_SH) ]; then
    GIT_PROMPT_SH=/usr/local/etc/bash_completion.d/git-prompt.sh
fi

if [ -d $(dirname $GIT_PROMPT_SH) ]; then
    export GIT_PS1_SHOWCOLORHINTS=1 
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWUPSTREAM='auto'
    if [ -f $GIT_PROMPT_SH ]; then
        source $GIT_PROMPT_SH
        PS1='\t \[\e]0;\u@\h: \w$(__git_ps1)\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \t$(__git_ps1 " (%s)") \$ '
        MY_GIT_PROMPT_COMMAND='__git_ps1 "\[\e]0;\u@\h: \w \t$(__git_ps1) \a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \t" " \\\$ ";'
        PROMPT_COMMAND=${MY_GIT_PROMPT_COMMAND}${PROMPT_COMMAND}
    fi
fi
