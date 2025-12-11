# ======================================================================
#  Tylko dla interaktywnej powłoki
# ======================================================================
case $- in
*i*) ;;
*) return ;;
esac

# ======================================================================
#  Aliasy lokalne
# ======================================================================
# Główne aliasy wersjonowane w repo
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# Dodatkowe lokalne aliasy (ignorowane przez Git)
[[ -f "$HOME/.bash_local" ]] && source "$HOME/.bash_local"

# ======================================================================
#  Ogólne bash-completion (jeśli zainstalowane)
#  sudo apt install bash-completion
# ======================================================================
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# ======================================================================
# Ścieżki do narzędzi / języków
# Kolejność PATH ma znaczenie – najpierw binarki usera, potem reszta
# ======================================================================

# ======================================================================
# NVIM
# ======================================================================
export NVIM="/opt/nvim/nvim"
export PATH="$NVIM:$PATH"

# ======================================================================
# GO
# ======================================================================
export GO_ROOT="/usr/local/go/bin"
export GO_USER="$HOME/go/bin"
export PATH="$GO_ROOT:$PATH"
export PATH="$GO_USER:$PATH"

# ======================================================================
# Cargo / Rust – environment od rustup
# ======================================================================
export CARGO_ROOT="$HOME/.cargo/bin/"
export PATH="$CARGO_ROOT:$PATH"
. "$HOME/.cargo/env"

# ======================================================================
#  NVM: Node.js + bash completion
# ======================================================================
export NVM_DIR="$HOME/.nvm"
# ładuje NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# autocompletion do NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ======================================================================
# kubectl
# ======================================================================
# kubectl + alias "k"
source <(kubectl completion bash)
complete -o default -F __start_kubectl k

# ======================================================================
# FZF
# ======================================================================
# fzf – fuzzy finder (keybindings i completion)
[ -f "$HOME/.fzf.bash" ] && source "$HOME/.fzf.bash"

# ======================================================================
#  RANCHER DESKTOP
# ======================================================================
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# ======================================================================
# Homebrew
# ======================================================================
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ======================================================================
#  Prompt: Starship
# ======================================================================
eval "$(starship init bash)"

# ======================================================================
#  Python: pyenv + virtualenv
#  Keep it at the bottom for approriate
#  Manage virtualenv using pyenv
# ======================================================================

# Add pyenv do PATH (bin + shims)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"

# Init pyenv (ustawia shims + wersje global/local)
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# ----------------------------------------------------------
# Bash completion tuning
# ----------------------------------------------------------
bind 'set show-all-if-ambiguous on'
bind 'set colored-completion-prefix on'
bind 'set completion-ignore-case on'
bind 'TAB:menu-complete'
