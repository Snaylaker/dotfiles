# Environment variables
set -gx PNPM_HOME "/Users/mhimmid/Library/pnpm"
set -gx GOPATH $HOME/go
set -gx PAGER 'nvim +Man!'

set -U fish_greeting

# PATH configuration
fish_add_path /opt/homebrew/bin
fish_add_path $PNPM_HOME
fish_add_path /usr/local/go/bin
fish_add_path $GOPATH/bin
fish_add_path /Users/mhimmid/.opencode/bin

# Aliases
alias vim='nvim'
alias clear="echo use Ctrl-L to clear the screen"
alias code="opencode"

# Key bindings
bind \cf /usr/local/bin/tmux-sessionizer

# Initialize Starship prompt
starship init fish | source
