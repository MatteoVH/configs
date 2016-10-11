#load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#enable ls color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# add node modules of current directory to path
export PATH=$PATH:./node_modules/.bin

# make prompt git aware
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# custom prompt
export PS1="\[$txtylw\][\u:\w] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] 💻  "
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
