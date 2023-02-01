if status is-interactive
end

# Aliases
alias la="exa -lah"
alias tmux="tmux -2"

# Environment
export PATH="$HOME/.cargo/bin:$PATH"

# Functions

# Bash feature
function !!
    eval $history[1]
end
