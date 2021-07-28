#!/bin/sh

set -e
set -x

curl -L https://nixos.org/nix/install | sh

#read new env
sh -l << EOF
set -e
set -x

nix-env -i mc python3 subversion git
EOF

sh ./cfg.sh

#read new env
sh -l << EOF
set -e
set -x

python3 -m venv "$HOME/.venv"

python3 -m pip install --upgrade pip
python3 -m pip install pygments pyyaml jinja2

(
    cd "$HOME/.boot"

    rm -rf zm || true

    git clone git@github.com:pg83/zm.git

    (
        cd "$HOME/.bin"

        rm ted mix || true

        ln -s ../.boot/zm/ted/ted ./
        ln -s ../.boot/zm/mix/mix ./
    )
)
EOF
