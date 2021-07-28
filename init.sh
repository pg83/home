#!/bin/sh

set -e
set -x

(rm -rf "$HOME/.boot" || true) && mkdir "$HOME/.boot" && cd "$HOME/.boot"
