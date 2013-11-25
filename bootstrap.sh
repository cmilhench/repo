#!/usr/bin/env bash

NAME=repo
REPO=https://github.com/cmilhench/$NAME.git

pushd . > /dev/null
cd ~ && test -d $NAME || git clone -q $REPO > /dev/null
cd $NAME 
git checkout -q origin/master > /dev/null
make install
cd ~
rm -fr $NAME
popd > /dev/null

echo
echo "Thanks for installing $NAME from $REPO"
echo