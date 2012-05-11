#!/bin/sh -e

set -x

if echo $PATH | grep /usr/local/bin > /dev/null ; then
    :
else
    PATH=$PATH:/usr/local/bin
fi

if [ -x /usr/local/lib/libgpg-error.dylib ] ; then
    exit 0
fi

tar xfj libgpg-error-1.10.tar.bz2
cd libgpg-error-1.10
./configure
make all check install
