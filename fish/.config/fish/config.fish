# Environment variables
set -gx PNPM_HOME "/Users/mhimmid/Library/pnpm"
set -gx PAGER 'nvim +Man!'

# PATH configuration
fish_add_path /opt/homebrew/bin
fish_add_path $PNPM_HOME
fish_add_path /usr/local/go/bin
fish_add_path $GOPATH/bin
fish_add_path /Users/mhimmid/.opencode/bin
fish_add_path /Users/mhimmid/.local/zig

# Aliases
alias vim='nvim'
alias code="opencode"

# Key bindings
bind \cf /usr/local/bin/tmux-sessionizer

# In ~/.config/fish/config.fish
function jjd
    read -P "Type (feat/fix/docs/refactor/chore): " type
    read -P "Subject: " subject
    read -P "Ticket number: " ticket
    jj describe -m "$type: $subject REF-$ticket"
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
