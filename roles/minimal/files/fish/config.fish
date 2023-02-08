if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias la="exa -lah"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/nix/var/nix/profiles/default/bin"
export PATH="$PATH:/$HOME/.nix-profile/bin"

set -g theme_color_scheme dracula
