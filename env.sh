#!/bin/sh

set -e
set -x

curl -L https://nixos.org/nix/install | sh

#read new env
sh << EOF
set -e
set -x

nix-env -i mc python3 subversion git
EOF

#read new env
sh << EOF
set -e
set -x

if test -f /lib/x86_64-linux-gnu/libnss_sss.so.2; then
    export LD_PRELOAD=/lib/x86_64-linux-gnu/libnss_sss.so.2
fi

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
