#!/bin/sh

set -e
set -x

cd files && tar c . | (cd "$HOME" && tar xf -)

for x in .bash_profile .bashrc; do
    rm "$HOME/$x" || true
done
