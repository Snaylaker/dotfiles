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

## Bootstrap
On a new Mac:

```bash
./install.sh
```

This will:
- install Homebrew if needed
- install packages from `./Brewfile`
- symlink the dotfiles into `$HOME` using GNU Stow
- back up conflicting existing files into `~/.dotfiles-backup/`

Private files are still manual: SSH private keys, auth tokens, and other local credentials are not stored in this repo.
