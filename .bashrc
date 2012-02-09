## exports
export PATH="$HOME/bin:$HOME/Dropbox/bin:$PATH"
export EDITOR="vim"
export CVSEDITOR="vim"
export LS_OPTIONS="--color=auto"
export CVS_RSH=ssh
export RSYNC_RSH=ssh
export EDITOR=vim
export PAGER=less
export LESS="-nX"

## aliases
alias ls="ls --color -Fs"
alias ll="ls --color -l"
alias l="ls --color -lA"
alias rm="rm -v"
alias c="clear"
alias up="uptime"
alias psa="ps afux"
alias pse="ps -ef"
alias which="type -path"
alias last5="last -5"
alias last10="last -10"
alias lsd='ls -ld `find . -type d`'
alias cd..='cd ..'

if [ "$UID" = "0" ]; then
    alias rm='rm -i'
    alias mv='mv -i'
fi

## functions
# repeat 10 echo foo
repeat ()
{
    local count="$1" i;
    shift;
    for i in $(seq 1 "$count");
    do
        eval "$@";
    done
}
seq ()
{
    local lower upper output;
    lower=$1 upper=$2;
    if [ $lower -ge $upper ]; then return; fi
    while [ $lower -le $upper ];
    do
        echo -n "$lower "
        lower=$(($lower + 1))
    done
    echo "$lower"
}
# find with a twich
f ()
{
  find ${1:+ "$1"} ${2:+ \-name "$2"} -print | more
}
