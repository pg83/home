alias go='ssh -l pg '

if test -f /lib/x86_64-linux-gnu/libnss_sss.so.2; then
    export LD_PRELOAD=/lib/x86_64-linux-gnu/libnss_sss.so.2
fi

export EDITOR=ted
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

. "$HOME/.nix-profile/etc/profile.d/nix.sh" || true

export PATH="$HOME/.venv1/bin:$HOME/.venv/bin:$HOME/.bin:$HOME/1/arcadia:$HOME/arcadia:$HOME/Sources/arcadia:$PATH"
