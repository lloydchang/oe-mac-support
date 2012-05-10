#!/bin/sh -e

set -x

if (/usr/local/bin/xz --version > /dev/null) ; then
    exit 0
fi

tar xfj xz-5.0.3.tar.bz2
cd xz-5.0.3
./configure
make all check install
