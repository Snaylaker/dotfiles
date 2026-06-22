#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup/$(date +%Y%m%d-%H%M%S)"
PACKAGES=(fish ghostty git jj nvim opencode ssh tmux)

log() {
  printf '[dotfiles] %s\n' "$*"
}

need_cmd() {
  command -v "$1" >/dev/null 2>&1
}

install_homebrew() {
  if need_cmd brew; then
    log "Homebrew already installed"
    return
  fi

  log "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
}

install_brew_deps() {
  if [[ -f "$REPO_DIR/Brewfile" ]]; then
    log "Installing packages from Brewfile"
    brew bundle --file="$REPO_DIR/Brewfile"
  else
    log "No Brewfile found, skipping package install"
  fi
}

backup_conflicts() {
  local pkg="$1"
  local src_root="$REPO_DIR/$pkg"

  while IFS= read -r -d '' src; do
    local rel target
    rel="${src#"$src_root"/}"
    target="$HOME/$rel"

    if [[ -e "$target" || -L "$target" ]]; then
      if [[ -L "$target" ]] && [[ "$(readlink "$target")" == "$src" ]]; then
        continue
      fi

      mkdir -p "$BACKUP_DIR/$(dirname "$rel")"
      if [[ ! -e "$BACKUP_DIR/$rel" && ! -L "$BACKUP_DIR/$rel" ]]; then
        log "Backing up $target"
        mv "$target" "$BACKUP_DIR/$rel"
      fi
    fi
  done < <(find "$src_root" \( -type f -o -type l \) -print0)
}

link_package() {
  local pkg="$1"
  backup_conflicts "$pkg"
  log "Stowing $pkg"
  stow --target="$HOME" --dir="$REPO_DIR" --restow "$pkg"
}

main() {
  if [[ "$(uname -s)" != "Darwin" ]]; then
    log "This bootstrap script is intended for macOS"
  fi

  install_homebrew

  if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  if ! need_cmd stow; then
    log "Installing GNU Stow"
    brew install stow
  fi

  install_brew_deps

  mkdir -p "$BACKUP_DIR"
  for pkg in "${PACKAGES[@]}"; do
    if [[ -d "$REPO_DIR/$pkg" ]]; then
      link_package "$pkg"
    fi
  done

  log "Done"
  log "Backups, if any: $BACKUP_DIR"
  log "You still need to restore private files manually (SSH private keys, auth files, local credentials)."
}

main "$@"
