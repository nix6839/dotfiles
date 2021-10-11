alias sudo='sudo '

alias ls='lsd'
alias cat='bat'
alias vi='nvim'
alias vim='nvim'

alias l='ls'
alias ll='ls -l'
alias lt='ls --tree'
alias la='ls -A'
alias lla='ls -lA'
alias lta='ls --tree -A'
alias lat='lta'
alias lR='ls -R'
alias llR='ls -lR'
alias laR='ls -AR'
alias llaR='ls -lAR'

alias sway-windows-type="swaymsg -t get_tree | jq '.nodes | .[] | .nodes | .[] | .nodes, .floating_nodes | .[] | {name, pid, shell}'"
