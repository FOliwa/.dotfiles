# Export additional varibles for virtualenv:
export GIT_EDITOR=vim
if type rg &>/dev/null; then
  export FZF_DDEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# Copy to system clipboard
# NOTE: You can pipe any output from terminal to system clipboard using clip alias
# ls -la | clip - and you can CTRL + V it anywhere
alias clip='xclip -selection clipboard'

# Mappings
alias vim=nvim
alias python=python3
alias ld="lazydocker"
alias k="kubectl"

# Git related
alias lg="git log --graph --oneline"
alias lgm="git log --graph --oneline  master.."
alias gst="git status"

# TMUX
# NOTE: This is a template for your reuse:
#alias mluti_tmux='tmux send $_RUN_JSON_SERVER C-m\; splitw -p 50 -v \; send $_RUN_CONFIGS C-m\; splitw -fh \;  send $_RUN_FRONT C-m\; splitw -fv \; send $_RUN_NGINX C-m\; send strt_backend C-m\;'

# Coloring
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'
alias grep='grep --color=auto'
