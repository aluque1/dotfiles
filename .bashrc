# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History settings
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=1000
export HISTFILESIZE=2000
shopt -s histappend

# Check window size after each command
shopt -s checkwinsize

# Git branch function
git_branch() {
    local branch
    branch=$(git branch --show-current 2>/dev/null)
    if [[ -n "$branch" ]]; then
        # Purple color for git branch
        echo -e "\[\e[35m\]$branch\[\e[0m\] "
    fi
}

# Color prompt setup
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    set_prompt() {
        local branch=$(git_branch)
        local title="\[\e]0;\u@\h: \w\a\]"
        PS1="${title}[\[\e[32m\]\A\[\e[0m\]][\[\e[34m\]\h\[\e[0m\]][${branch}\[\e[33m\]\w\[\e[0m\]]\$ "
    }
    prompt_command() {
        history -a          # Append current session history to file
        history -n          # Read new history entries from file
        set_prompt          # Set the prompt dynamically
    }
    PROMPT_COMMAND=prompt_command
else
    PS1='[\A][\h][\w]\$ '
fi


# Load aliases
[[ -f ~/.config/aliasrc ]] && . ~/.config/aliasrc


nhist() {
    HISTFILE=/dev/null
    bash -ic "$*"
    history -d $(history 1)
}
