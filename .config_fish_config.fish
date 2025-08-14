if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

fzf --fish | source

lnk completion fish | source

starship init fish | source

# pnpm
set -gx PNPM_HOME "/Users/dylan/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
