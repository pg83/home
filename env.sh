#!/bin/sh

set -e
set -x

curl -L https://nixos.org/nix/install | sh

#read new env
sh << EOF
set -e
set -x

nix-env -i mc python3 subversion git
python3 -m venv $HOME/.venv

python3 -m pip install --upgrade pip
python3 -m pip install pygments pyyaml jinja2

(
    cd $HOME/.boot

    git clone git@github.com:pg83/zm.git
    ln -s zm/ted/ted ./
)
EOF
