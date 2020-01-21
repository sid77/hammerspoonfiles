#!/bin/sh

set -e

GH_DIR="$HOME/src/github.com"
HSDIR="$HOME/.hammerspoon"
SPOONSDIR="$HSDIR/Spoons"

git_clone() {
  REPO_DIR="$GH_DIR/$1"
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
  GH_USER="$1"
  GH_REPO="$2"
  SPOON="$3.spoon"
  if [ ! -r "$SPOON" ]; then
    ( cd "$SPOONSDIR"
      ln -sf "$GH_DIR/$GH_USER/$GH_REPO/Source/$SPOON" .
    )
  fi
}

mkdir -p "$SPOONSDIR"
chmod 0700 "$HSDIR"
( cd "$HSDIR"
  ln -sf "$GH_DIR/sid77/hammerspoonfiles/init.lua" .
)

git_clone Hammerspoon Spoons
install_spoon Hammerspoon Spoons ReloadConfiguration

git_clone scottwhudson Lunette
install_spoon scottwhudson Lunette Lunette
