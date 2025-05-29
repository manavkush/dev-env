export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)
source $ZSH/oh-my-zsh.sh

source ./zsh_profile

# Tmux alias
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'
# Creates a new session
alias tn='tmux new-session'
# Lists all ongoing sessions
alias tl='tmux list-sessions'


bindkey -s ^F "tmux-sessionizer\n"

