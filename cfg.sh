#!/bin/sh

set -e
set -x

cp .profile "$HOME"
rm "$HOME/.bash_profile" || true
rm "$HOME/.bashrc" || true
