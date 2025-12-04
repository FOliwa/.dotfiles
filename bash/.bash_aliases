# Export additional varibles for virtualenv:
export GIT_EDITOR=vim
if type rg &>/dev/null; then
  export FZF_DDEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# Mappings
alias vim=nvim
alias python=python3
alias ld="lazydocker"
alias k="kubectl"

# Git related
alias lg="git log --graph --oneline"
alias lgm="git log --graph --oneline  master.."
alias gstat="git status"

# TMUX
# INFO: This is a template for your reuse:
#alias mluti_tmux='tmux send $_RUN_JSON_SERVER C-m\; splitw -p 50 -v \; send $_RUN_CONFIGS C-m\; splitw -fh \;  send $_RUN_FRONT C-m\; splitw -fv \; send $_RUN_NGINX C-m\; send strt_backend C-m\;'
