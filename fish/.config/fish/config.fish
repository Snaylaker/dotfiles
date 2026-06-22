# Environment variables
set -gx PNPM_HOME "$HOME/Library/pnpm"
set -gx PAGER 'nvim +Man!'

# PATH configuration
fish_add_path /opt/homebrew/bin
fish_add_path $PNPM_HOME
fish_add_path /usr/local/go/bin
fish_add_path $GOPATH/bin
fish_add_path $HOME/.opencode/bin
fish_add_path $HOME/.local/zig

# Aliases
alias vim='nvim'
alias c="opencode"

# Key bindings
bind \cf /usr/local/bin/tmux-sessionizer

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pi / Codex OAuth token from ~/.pi/agent/auth.json
if test -f "$HOME/.pi/agent/auth.json"
    set -l pi_codex_token (python3 -c 'import json, os; p=os.path.expanduser("~/.pi/agent/auth.json"); d=json.load(open(p)); print(d.get("openai-codex", {}).get("access", ""))')
    if test -n "$pi_codex_token"
        set -gx OPENAI_API_KEY "$pi_codex_token"
    end
end
