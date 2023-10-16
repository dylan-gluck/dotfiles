# Oh My Posh
eval "$(oh-my-posh init zsh --config $HOME/.zsh/dylangluck.omp.json)"

# Search current directory, home directory, Sites and Workspace projects folder
# See: http://weblog.bocoup.com/shell-hacking-cdpath/
cdpath=(. $HOME $HOME/Sites $HOME/Workspace)

# Aliases
alias gg="lazygit"
alias vim="nvim"
alias v="vim"
alias lsx="exa -lahHTF -L 1 --git --no-filesize --git-ignore --no-permissions --no-user --ignore-glob=\".git|.vscode\""
alias gaa="git add --all"
alias gco="git checkout"
alias gcmsg="git commit -m"
alias gpnp="git pull && git push"

# Touch + Missing Directories
function t () { mkdir -p "$(dirname "$1")" && touch "$1" ; }

# Bun
[ -s "/Users/dylan/.bun/_bun" ] && source "/Users/dylan/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Pnpm
export PNPM_HOME="/Users/dylan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Python 
export PATH=/Users/dylan/Library/Python/3.9/bin:$PATH

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Plugins 
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship
# eval "$(starship init zsh)"
