# Oh My Posh
eval "$(oh-my-posh init zsh --config $HOME/.zsh/dylangluck.omp.json)"

# Search current directory, home directory, Sites and Workspace projects folder
# See: http://weblog.bocoup.com/shell-hacking-cdpath/
cdpath=(. $HOME $HOME/Sites $HOME/Workspace)

# Will return the current branch name
# Usage example: git pull origin $(current_branch)

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# Aliases
alias gg="lazygit"
alias vim="nvim"
alias v="vim"
alias lsx="exa -lahHTF -L 1 --git --no-filesize --git-ignore --no-permissions --no-user --ignore-glob=\".git|.vscode\""
alias gaa="git add --all"
alias gco="git checkout"
alias gcmsg="git commit -m"
alias ggpnp="git pull origin $(current_branch) && git push origin $(current_branch)"
alias ggpush="git push origin $(current_branch)"

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
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# History substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Starship
# eval "$(starship init zsh)"
