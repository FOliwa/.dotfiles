# Symlink Approach for .dofiles

The Symlink Approach is about keeping your dotfiles in a dedicated directory (e.g., ~/dotfiles/) and creating symbolic links (symlinks) from there to your home directory. This way, your actual config files stay version-controlled while still being in the expected locations.

# Way of working

I will use `stow` tool. This is simple tool to mange symlinks for dotfiles.

## Setup

1. Install `stow`

```bash
sudo apt install stow
```

2. Create a dofiles directory and structure it

> Maintain structure!
> When using stow, mirror the expected directory structure inside ~/dotfiles/,
> and it will place symlinks correctly.
> Read more in `Nested Directories` heading below.

```bash
# For example:
mkdir -p ~/dotfiles/bash
mkdir -p ~/dotfiles/vim
mkdir -p ~/dotfiles/git
```

3. Move config files into their respective folders

```bash
mv ~/.bashrc ~/dotfiles/bash/.bashrc
mv ~/.vimrc ~/dotfiles/vim/.vimrc
mv ~/.gitconfig ~/dotfiles/git/.gitconfig
```

4. Create symlinks using `stow`

```bash
cd ~/dotfiles
stow bash
stow git
stow vim
```

This will create symlinks like

```bash
~/.bashrc  →  ~/dotfiles/bash/.bashrc
~/.vimrc   →  ~/dotfiles/vim/.vimrc
~/.gitconfig → ~/dotfiles/git/.gitconfig
```

5. Push to Git

```bash
# You do it only at the beginning to init your repo
cd ~/dotfiles
git init
git remote add origin git@github.com:PUT_NAME_HERE/dotfiles.git
git add .
git commit -m "Initial dotfiles setup"
git push -u origin main
```

# Nested Directories

Let's say you have a tool like alacrity and its configuration is taken from $HOME/.config/alacritty folder. Than you
need to preserve correct directory structure in your dotfiles repo to let `stow` correctly link. For example:

You have: `~/.config/nvim/init.vim` configuration for vim. You have to move it to `dotfiles` this way:

```bash
mkdir -p ~/dotfiles/nvim/.config/nvim
mv ~/.config/nvim/init.vim ~/dotfiles/nvim/.config/nvim/
```

This way `stow` will create symlinks correctly inside `~/.config/` directory you just need to:

```bash
cd ~/dotfiles
stow nvim
```

# Pros - Cons

## CONS

- Requires moving file once
- Need to manually `stow` configs on new systems

## PROS

Things not gonna happened "AutoMagically" out of the box in this approach and some manual action are required but
except of that the great things are:

- `stow` will automatically manges symlinks for you
- Your files are organized in categories
- This is reversible - you can remove symlinks without deleting files

# Notes

## About Bash

As I have some machine specific configs and aliases - I dont want to share it in all machines as there thos aliases
could not work or be broke. To handle machine specific configs for bash I decided to add file `.bash_local`. Put there
machine specific settings that should not be part of Git repository.

```bash
# Load additional local aliases (ignored from Git)
[[ -f ~/.bash_local ]] && source ~/.bash_local
```
