# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# SOURCE BASH ALIASES {{{1

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# }}}

# TERMINAL BEHAVIOR {{{1

set -o vi

set -o noclobber

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.

shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.

shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# TAB-COMPLETION {{{2

# If there are multiple matches for completion, Tab should cycle through them
# and Shift-Tab should cycle backwards

# bind 'TAB:menu-complete'
# bind '"\e[Z": menu-complete-backward'

# Display a list of the matching files

# bind "set show-all-if-ambiguous on"

# Perform partial (common) completion on the first Tab press, only start
# cycling full results on the second Tab press (from bash version 5)

# bind "set menu-complete-display-prefix on"

# Cycle through history based on characters already typed on the line

# bind '"\e[A":history-search-backward'
# bind '"\e[B":history-search-forward'

# Keep Ctrl-Left and Ctrl-Right working when the above are used

# bind '"\e[1;5C":forward-word'
# bind '"\e[1;5D":backward-word'

# }}}
# }}}

# COLOR {{{1

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# colored GCC warnings and errors
# export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

eval "$(starship init bash)"

# }}}

# ENVIRONMENT VARS {{{1

export XDG_CONFIG_HOME="$HOME/.config"

export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

export CLASSPATH=$HOME/pathtojar/stdlib.jar:$CLASSPATH
export CLASSPATH=/usr/local/bin/algs4.jar:$CLASSPATH
export PATH=$PATH:/home/engineseer/.local/bin:/home/engineseer/go/bin
export PATH=$PATH:/usr/local/go/bin

export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/zen-browser

if [ "$color_prompt" = yes ]; then
    PS1='\[\e[1;34m\]\w\[\e[0m\]> '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# BASH HISTORY {{{2

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it

shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

HISTSIZE=1000
HISTFILESIZE=2000

# Make the command-line history show dates and times

HISTTIMEFORMAT='%F %T '

# }}}

# }}}

# uv
export PATH="/home/kix/.local/bin:$PATH"
