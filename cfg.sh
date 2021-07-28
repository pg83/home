#!/bin/sh

set -e
set -x

for d in .config .bin; do
    mkdir -p "$HOME/$d" || true
done

rm -rf "$HOME/.config/mc" || true
cp -R mc "$HOME/.config/"

cp profile "$HOME/.profile"

for x in .bash_profile .bashrc; do
    rm "$HOME/$x" || true
done
