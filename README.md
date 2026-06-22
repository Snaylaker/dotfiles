# dotfiles

Personal dotfiles, organized by application so they can be symlinked with a tool like GNU Stow.

## Layout
- `fish/` — Fish shell config
- `git/` — Git config
- `ghostty/` — Ghostty terminal config
- `jj/` — Jujutsu config
- `nvim/` — Neovim config
- `opencode/` — OpenCode config
- `ssh/` — SSH config files safe to sync
- `tmux/` — Tmux config

## Notes
This repo intentionally tracks authored config only.
Generated state like caches, telemetry, plugin installs, `node_modules`, host fingerprints, and shell universal variables are ignored.
