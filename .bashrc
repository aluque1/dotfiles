# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Custom prompt
# LUQUE -> "pwd"
PS1='\[\e[31m\]  LUQUE\[\e[32m\] -> \[\e[34m\]\w\[\e[0m\] '

#########################
#  	alias		#
#########################

## xpbs package manager aliases
alias xi='sudo xbps-install -Sy'
alias xr='sudo xbps-remove'
alias xo='sudo xbps-remove -Oo'
alias up='sudo xbps-install -Su'

## Other aliases
alias uskb='setxkbmap -layout us'
alias eskb='setxkbmap -layout es'
alias code='code-oss'
alias clear='clear && sh ~/scripts/afetch/afetch ~/scripts/afetch/cicada'
alias c='clear'

## Workflow aliases
alias fal='cd ~/Desktop/uni/FAL/24-25'
alias da='cd ~/Desktop/uni/DA'
alias falprep='./scripts/fal/folders.sh'
alias daprep='./scripts/da/folders.sh'
alias update='sh ~/scripts/logout/pushinp.sh'
alias getgit='sh ~/scripts'
sh ~/scripts/afetch/afetch ~/scripts/afetch/cicada
eskb
