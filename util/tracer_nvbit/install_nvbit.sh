#!/bin/bash
export BASH_ROOT="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

rm -rf $BASH_ROOT/nvbit_release $BASH_ROOT/nvbit_release_x86_64
wget https://github.com/NVlabs/NVBit/releases/download/v1.7.7.1/nvbit-Linux-x86_64-1.7.7.1.tar.bz2
tar -xf nvbit-Linux-x86_64-1.7.7.1.tar.bz2 -C $BASH_ROOT
rm nvbit-Linux-x86_64-1.7.7.1.tar.bz2
# v1.7.7.1 extracts to nvbit_release_x86_64, rename for compatibility
if [ -d "$BASH_ROOT/nvbit_release_x86_64" ] && [ ! -d "$BASH_ROOT/nvbit_release" ]; then
    mv $BASH_ROOT/nvbit_release_x86_64 $BASH_ROOT/nvbit_release
fi
