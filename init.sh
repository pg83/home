#!/bin/sh

set -e
set -x

(rm -rf "$HOME/.boot" || true) && mkdir "$HOME/.boot" && cd "$HOME/.boot"

curl --output master.zip -L "https://github.com/pg83/home/archive/refs/heads/master.zip"
tar xf master.zip

cd home

sh ./run.sh
