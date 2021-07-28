alias go='ssh -l pg '

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=ted
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8

. $HOME/.nix-profile/etc/profile.d/nix.sh || true

export PATH="$HOME/.venv1/bin:$HOME/.venv/bin:$HOME/.bin:$HOME/1/arcadia:$HOME/arcadia:$HOME/Sources/arcadia:$PATH"
