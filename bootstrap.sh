#!/usr/bin/env bash

NAME=repo
REPO=https://github.com/cmilhench/$NAME.git

pushd .
cd ~ && test -d $NAME || git clone $REPO
cd $NAME
git checkout origin/master
make install
cd ~
rm -fr $NAME
popd