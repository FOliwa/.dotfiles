# Export additional varibles for virtualenv:
export WORKON_HOME=$HOME/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh
export GIT_EDITOR=vim
if type rg &>/dev/null; then
	export FZF_DDEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# Aliases:
alias vim=nvim
alias python=python3

alias sync_dotfiles='~/.dotfiles/sync.sh'
alias rs='python manage.py runserver'
alias shell='python manage.py shell'

alias lg="git log --graph --oneline"
alias lgm="git log --graph --oneline  master.."
alias gstat="git status"
alias characters_forge="cd ~/Workspace/CharacterForge && workon characters_forge && export DJANGO_SETTINGS_MODULE=characters_forge.settings"
