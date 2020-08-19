# !/bin/bash

ma="$(uname -s)"
case "${ma}" in
    Linux*) machine=Linux;;
    Darwin*) machine=Mac;;
    CYGWIN*) machine=Cygwin;;
    MINGW*) machine=MinGw;;
    *) machine=UNKNOWN
esac

MYDIR=`dirname $0`

if [ ${machine} == Mac ]; then
    rm -rf ~/Library/Fonts/maxttf
    mkdir -p ~/Library/Fonts/maxttf
    cp -rf $MYDIR/ttf/* ~/Library/Fonts/maxttf
    fc-cache
fi

if [ ${machine} == Linux ]; then
    rm -rf /usr/share/fonts/maxttf
    mkdir -p /usr/share/fonts/maxttf
    cp -rf $MYDIR/ttf/* /usr/share/fonts/maxttf
    fc-cache
fi
