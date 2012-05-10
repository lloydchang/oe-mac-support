#!/bin/sh -e

set -x

if echo $PATH | grep /usr/local/bin > /dev/null ; then
    :
else
    PATH=$PATH:/usr/local/bin
fi

if (wget --version > /dev/null) ; then
    exit 0
fi

./xz.sh

unxz < wget-1.13.4.tar.xz | tar xf -
cd wget-1.13.4
./configure --without-ssl
make all install
