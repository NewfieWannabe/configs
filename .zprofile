# ZSH Profile Hacks
# Last updated July 10 2022 @ 1340

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Colour prompts
color_prompt=yes

# Source my aliases
source ~/.aliases

#Confirm Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

