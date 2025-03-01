# Export additional varibles for virtualenv:
export WORKON_HOME=$HOME/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh
export GIT_EDITOR=vim
if type rg &>/dev/null; then
  export FZF_DDEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# Mappings
alias vim=nvim
alias python=python3
export GEM_HOME="$HOME/Gems"

# Shorcuts
alias rs='python manage.py runserver'
alias shell='python manage.py shell'

# Git related
alias lg="git log --graph --oneline"
alias lgm="git log --graph --oneline  master.."
alias gstat="git status"

# TMUX
# INFO: This is a template for your reuse:
#alias mluti_tmux='tmux send $_RUN_JSON_SERVER C-m\; splitw -p 50 -v \; send $_RUN_CONFIGS C-m\; splitw -fh \;  send $_RUN_FRONT C-m\; splitw -fv \; send $_RUN_NGINX C-m\; send strt_backend C-m\;'

function info() {
  echo "============================================
    DW >> P.Timer >> KISS >> SB

Stick to the plan and GO!!!
==========================================="
}

info
