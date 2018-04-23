#!/bin/bash

set -e

if [[ ! -d fatty ]]; then
    git clone https://github.com/paolo-sz/fatty.git
fi

cd fatty

/init /mnt/c/cygwin64/bin/bash.exe ../compile.sh

version=$(printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"-1)
7z a ../fatty-$version.7z fatty
