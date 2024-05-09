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

# TMUX
# INFO: This is a template for your reuse:
#alias mluti_tmux='tmux send $_RUN_JSON_SERVER C-m\; splitw -p 50 -v \; send $_RUN_CONFIGS C-m\; splitw -fh \;  send $_RUN_FRONT C-m\; splitw -fv \; send $_RUN_NGINX C-m\; send strt_backend C-m\;'


# SB RELATED ======================================
# INFO:: Remember to define IP of sb and check paths with --dry-run
alias sb="cd $HOME/Workspace/Second-Brain/ && vim README.md"
alias sb_pull_all="rsync -avz --exclude Second-Brain/9_Excluded_Files sb:Second-Brain $HOME/Workspace/"
alias sb_push_all="rsync -avz --exclude 9_Excluded_Files $HOME/Workspace/Second-Brain/ sb:Second-Brain"

function sb_create_backup () {
  CURRENT_DATE=$(date +"%Y-%m-%d")
  SB_BACKUP_PATH="$HOME/Documents/SB_Backups/$CURRENT_DATE"
  mkdir -p $SB_BACKUP_PATH

  # BACKUP LOCAL FILES
  echo "==== CREATE LOCAL COPY ===="
  rsync -avz $HOME/Workspace/Second-Brain/ $SB_BACKUP_PATH > /dev/null
  echo "[INFO] Local copy under path: $SB_BACKUP_PATH \n"
}

function sb_info ()
{
  echo "============================================
  SB REMINDER
    [1] Pull at start  
    [2] Push at end    

  ALIASES
    -> sb
    -> sb_create_backup
    -> sb_pull_all --dry-run --delete
    -> sb_push_all --dry-run --delete
==========================================="
}

sb_info

