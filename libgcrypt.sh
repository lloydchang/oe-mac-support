#!/bin/sh -e

set -x

if echo $PATH | grep /usr/local/bin > /dev/null ; then
    :
else
    PATH=$PATH:/usr/local/bin
fi

if [ -x /usr/local/lib/libgcrypt.dylib ] ; then
    exit 0
fi

./libgpg-error.sh

tar xfz libgcrypt-1.5.0.tar.bz2
cd libgcrypt-1.5.0
./configure
make all install
