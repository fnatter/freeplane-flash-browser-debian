#!/bin/bash

TEMPDIR=$(mktemp -d --tmpdir=/tmp)

(
cd $TEMPDIR
git clone https://github.com/freeplane/misc.git

TOPDIR=$TEMPDIR/freeplane-flash-browser-1.0
mkdir $TOPDIR
cp -r $TEMPDIR/misc/flash-browser/source/* $TOPDIR

tar -cpv -C $TEMPDIR freeplane-flash-browser-1.0 --exclude visorFreeplane.swf | \
gzip -9 > $TEMPDIR/freeplane-flash-browser-1.0.tar.gz
)

cp $TEMPDIR/freeplane-flash-browser-1.0.tar.gz .
