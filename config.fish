source ~/.config/fish/alias.fish

set -U fish_greeting

function starship_transient_prompt_func
    starship module character
end
starship init fish | source
enable_transience
