if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

fzf --fish | source

lnk completion fish | source

starship init fish | source
