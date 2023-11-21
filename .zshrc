EDITOR=vim

eval "$(sheldon source)"

source /usr/local/opt/spaceship/spaceship.zsh

eval "$(fnm env --use-on-cd)"

# aliases
alias l='eza'
alias la='eza -a'
alias ll='eza -lah'
alias ls='eza --color=auto'

alias cat='bat'
