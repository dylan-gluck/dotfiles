# Mac / Linux Dotfiles

Uses [lnk](https://github.com/yarlson/lnk) to sync.

### First time setup

lnk init -r git@github.com:you/dotfiles.git
lnk add ~/.bashrc ~/.vimrc ~/.gitconfig
lnk push "initial setup"

### On a new machine

lnk init -r git@github.com:you/dotfiles.git
lnk pull  # auto-creates symlinks

### Daily edits

vim ~/.vimrc           # edit normally
lnk status             # check what changed
lnk push "new plugins" # commit & push
