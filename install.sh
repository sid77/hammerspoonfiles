#!/bin/sh

set -e

GITHUB_DIR="$HOME/src/github.com"
HSDIR="$HOME/.hammerspoon"
SPOONSDIR="$HSDIR/Spoons"

git_clone() {
  REPO_DIR="$GITHUB_DIR/$1"
  mkdir -p "$REPO_DIR"
  ( cd "$REPO_DIR"
    if [ -d "$2" ]; then
    ( cd "$2"
      git pull
    )
    else
      git clone "https://github.com/$1/$2.git"
    fi
  )
}

install_spoon() {
  SPOON="$1.spoon"
  if [ ! -r "$SPOON" ]; then
    ln -sf "$GITHUB_DIR/Hammerspoon/Spoons/Source/$SPOON" .
  fi
}

mkdir -p "$SPOONSDIR"
chmod 0700 "$HSDIR"
( cd "$HSDIR"
  ln -sf "$GITHUB_DIR/sid77/hammerspoonfiles/init.lua" .
)

git_clone Hammerspoon Spoons
( cd "$SPOONSDIR"
  install_spoon ReloadConfiguration
  install_spoon WindowHalfsAndThirds
  install_spoon WindowScreenLeftAndRight
)
