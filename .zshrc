# Python 
export PATH=/Users/dylan/Library/Python/3.9/bin:$PATH

# Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias gg="lazygit"
alias vim="nvim"
alias v="vim"
alias lsx="exa -lahHTF -L 1 --git --no-filesize --git-ignore --no-permissions --no-user --ignore-glob=\".git|.vscode\""

# Touch + Missing Directories
function t () { mkdir -p "$(dirname "$1")" && touch "$1" ; }

# Bun
[ -s "/Users/dylan/.bun/_bun" ] && source "/Users/dylan/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Pnpm
export PNPM_HOME="/Users/dylan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Starship
eval "$(starship init zsh)"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
