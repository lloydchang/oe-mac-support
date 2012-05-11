#!/bin/sh -e

set -x

if echo $PATH | grep /usr/local/bin > /dev/null ; then
    :
else
    PATH=$PATH:/usr/local/bin
fi

if [ -x autoconf-2.69/autoconf ] ; then
    exit 0
fi

./xz.sh

unxz < autoconf-2.69.tar.xz | tar xf -
cd autoconf-2.69
./configure
make all check
