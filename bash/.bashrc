# ======================================================================
#  Tylko dla interaktywnej powłoki
# ======================================================================
case $- in
*i*) ;;
*) return ;;
esac

# ======================================================================
#  Ścieżki do narzędzi / języków
# ======================================================================
export NVIM="/opt/nvim/nvim"
export PYENV_ROOT="$HOME/.pyenv"
export CARGO_ROOT="$HOME/.cargo/bin/"
export GO_USER="$HOME/go/bin"
export GO_ROOT="/usr/local/go/bin"

# Kolejność PATH ma znaczenie – najpierw binarki usera, potem reszta
export PATH="$CARGO_ROOT:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$GO_ROOT:$PATH"
export PATH="$GO_USER:$PATH"
export PATH="$NVIM:$PATH"

# ======================================================================
#  Python: pyenv + virtualenvwrapper
# ======================================================================
# Inicjalizacja pyenv (same wersje Pythona)
eval "$(pyenv init -)"

# Virtualenvwrapper (zarządzanie wirtualnymi środowiskami)
export WORKON_HOME="$HOME/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="$(which python)"
export VIRTUALENVWRAPPER_VIRTUALENV="$(which virtualenv)"

if [[ -z "${_VENVWRAPPER_LOADED:-}" ]]; then
  export _VENVWRAPPER_LOADED=1
  source "$(which virtualenvwrapper.sh)"
fi

# Cargo / Rust – environment od rustup
. "$HOME/.cargo/env"

# ======================================================================
#  Aliasy lokalne
# ======================================================================
# Główne aliasy wersjonowane w repo
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# Dodatkowe lokalne aliasy (ignorowane przez Git)
[[ -f "$HOME/.bash_local" ]] && source "$HOME/.bash_local"

# ======================================================================
#  NVM: Node.js + bash completion
# ======================================================================
export NVM_DIR="$HOME/.nvm"
# ładuje NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# autocompletion do NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ======================================================================
#  Ogólne bash-completion (jeśli zainstalowane)
#  sudo apt install bash-completion
# ======================================================================
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# ======================================================================
#  Completions do konkretnych narzędzi
# ======================================================================
# kubectl + alias "k"
source <(kubectl completion bash)
complete -o default -F __start_kubectl k

# fzf – fuzzy finder (keybindings i completion)
[ -f "$HOME/.fzf.bash" ] && source "$HOME/.fzf.bash"

# ======================================================================
#  Inne narzędzia modyfikujące PATH
# ======================================================================
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Homebrew (Linuxbrew)
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ======================================================================
#  Prompt: Starship
# ======================================================================
eval "$(starship init bash)"

### ----------------------------------------------------------
### Bash completion tuning
### ----------------------------------------------------------
bind 'set show-all-if-ambiguous on'
bind 'set colored-completion-prefix on'
bind 'set completion-ignore-case on'
bind 'TAB:menu-complete'
