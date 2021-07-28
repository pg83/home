#!/bin/sh

set -e
set -x

mkdir -p "$HOME/.config" || true
rm -rf "$HOME/.config/mc" || true

cp -R mc "$HOME/.config/"
cp .profile "$HOME"
rm "$HOME/.bash_profile" || true
rm "$HOME/.bashrc" || true
mkdir "$HOME/.bin" || true
