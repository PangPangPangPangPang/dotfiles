export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ls='exa --color{,=auto,=always}'

alias v=vim
alias vi="vim --noplugin"
alias nv=nvim
# alias vim=nvim
alias vim="~/nvim-osx64/bin/nvim"

export LAUNCH_MONITOR_ENV="DEBUG"

#GOPATH
export GOPATH=$HOME/go
#GOPATH root bin
export PATH=$PATH:$GOPATH/bin

export PATH=`pwd`/flutter/bin:$PATH
export PATH="$PATH:$HOME/.pub-cache/bin"

export FZF_DEFAULT_OPTS="--bind 'enter:execute(nvim {})' --height 40% --layout=reverse --border"
export FZF_PREVIEW_COMMAND='bat --color=always --style=plain --theme=TwoDark -n -- {} || cat {}'
export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'
