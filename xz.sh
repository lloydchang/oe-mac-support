#!/bin/sh -e

set -x

if echo $PATH | grep /usr/local/bin > /dev/null ; then
    :
else
    PATH=$PATH:/usr/local/bin
fi

if (xz --version > /dev/null) ; then
    exit 0
fi

tar xfj xz-5.0.3.tar.bz2
cd xz-5.0.3
./configure
make all check install
