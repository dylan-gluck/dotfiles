# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/dylan/.zsh/completions:"* ]]; then export FPATH="/Users/dylan/.zsh/completions:$FPATH"; fi
# Env
. "$HOME/.local/bin/env"

# NPM Global
export PATH=~/.npm-global/bin:$PATH

# Go
export PATH=/Users/dylan/go/bin:$PATH

# Pnpm
export PNPM_HOME="/Users/dylan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Docker
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit
compinit

# Starship
eval "$(starship init zsh)"

# Homebrew
export HOMEBREW_NO_ENV_HINTS=1

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Search current directory, home directory, Sites and Workspace projects folder
# See: http://weblog.bocoup.com/shell-hacking-cdpath/
cdpath=(. $HOME $HOME/Workspace)

# Current Git Branch
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# Aliases
alias buu="brew update && brew upgrade"
alias tma="tmux attach"
alias gg="lazygit"
alias dd="lazydocker"
alias qq="lazysql"
alias ff="fastfetch"
alias v="nvim"
# alias cat="bat"
alias man="batman"
alias yz="yazi"
alias mtop="sudo mactop"

# alias cd="z"
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"
alias ls="eza"
alias la="eza -la"
alias lsx="eza -lhHTF -L 1 --git --no-filesize --git-ignore --no-permissions --no-user --ignore-glob=\".git|.vscode\""
alias lsxa="eza -lahHTF -L 1 --git --no-filesize"

alias gaa="git add --all"
alias gco="git checkout"
alias gcmsg="git commit -m"
alias ggpnp="git pull origin $(current_branch) && git push origin $(current_branch)"
alias ggpush="git push origin $(current_branch)"

# Touch + Missing Directories
function t () { mkdir -p "$(dirname "$1")" && touch "$1" ; }
. "/Users/dylan/.deno/env"