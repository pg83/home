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

sh ./cfg.sh
. $HOME/.profile

#read new env
sh << EOF
set -e
set -x

python3 -m venv "$HOME/.venv"
EOF

#read new env
sh << EOF
set -e
set -x

env

python3 -m pip install --upgrade pip
python3 -m pip install pygments pyyaml jinja2

(
    cd "$HOME/.boot"

    rm -rf zm || true

    if test -f /lib/x86_64-linux-gnu/libnss_sss.so.2; then
        export LD_PRELOAD=/lib/x86_64-linux-gnu/libnss_sss.so.2
    fi

    git clone git@github.com:pg83/zm.git

    (
        cd "$HOME/.bin"

        rm ted mix || true

        ln -s ../.boot/zm/ted/ted ./
        ln -s ../.boot/zm/mix/mix ./
    )
)
EOF
