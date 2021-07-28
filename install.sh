#!/bin/sh

set -e
set -x

cp .profile ~/
rm ~/.bash_profile || true
rm ~/.bashrc || true
