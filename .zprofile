# Bash Profile Hacks

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# LS Aliases
alias ls='ls -GFh'
alias la='ls -laGFh'
alias ll='ls -lGFh'

# vim Aliases
alias vi='vim'

# grep Alias
alias grep='grep --color=auto'

# tldr Alias
alias man='tldr'

# Homebrew Aliases
alias buu='brew update && brew upgrade'

# Other application Aliases
alias tvnamer='tvnamer --always --recursive --selectfirst'

