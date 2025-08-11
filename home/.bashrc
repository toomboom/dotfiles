PS1='\[\e[38;5;39m\]\u@\H \[\e[0m\]\w \[\e[92m\]\$\[\e[0m\] '

alias ls='ls --color=auto'
alias l='ls -l --human-readable --no-group --color=auto'
alias ll='ls -l --almost-all --human-readable --color=auto'
alias ..='cd ..'
alias gdb='gdb -tui -q -ex "set debuginfod enabled off"'
alias grep='grep --color=auto'
alias gccdbg="gcc -Wall -g"

function cd()
{
    command cd "$@" && l
}
