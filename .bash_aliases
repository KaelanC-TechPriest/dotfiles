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
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

alias nvim='${HOME}/AppImages/nvim.appimage'
alias nv='nvim'

# CLI Commands
alias sm='${HOME}/CS/CLI_Commands/Screen_Modes/screenmode'
alias schd="${HOME}/CS/CLI_Commands/Schedule/schedule.sh"
alias monitor="${HOME}/CS/CLI_Commands/monitor_on_off/monitor"
alias ocrsh="${HOME}/CS/CLI_Commands/Screenshot/screenst"

alias sus="systemctl suspend"

alias tmux="tmux -u"

alias avenv="source .venv/bin/activate"

mdtopdf () {
    pandoc -o "../PDFs/$(basename "$1" .md).pdf" "$1" --pdf-engine=xelatex
    evince "../PDFs/$(basename "$1" .md).pdf"
}

# for backing up dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias cal='ncal -C'
