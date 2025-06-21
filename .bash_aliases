# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    # ls -GFhA
    alias ls='ls -FhA --color=auto --group-directories-first'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -al'
alias l='ls -C'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#Sat Jun 21 11:42:03 AM MDT 2025
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# make cd run ls
function cd () {
    builtin cd "$@" && ls
}
alias cd=cd

# prompt before overwriting files
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ln='ln -i'

alias nv='nvim'

alias ocrsh="${HOME}/personal/cs/cool-one-shots/Screenshot/screenst"

alias tmux="tmux -u"

alias avenv="source .venv/bin/activate"

mdtopdf () {
    pandoc -o "../PDFs/$(basename "$1" .md).pdf" "$1" --pdf-engine=xelatex
    evince "../PDFs/$(basename "$1" .md).pdf"
}

# for backing up dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias cal='ncal -C'

# Neorg
alias ngp='cd ~/personal/notes/ && nvim -c "Neorg workspace personal"'
alias ngs='cd ~/school/ && nvim -c "Neorg workspace school"'

# tmux
alias tmux-sessions="${HOME}/.config/tmux/tmux-sessions"
