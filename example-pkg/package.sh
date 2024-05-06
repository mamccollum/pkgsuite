#!/bin/sh

cd root

# remove old
rm -rf sample* prototype

# make prototype file to list files to be packaged
echo "i pkginfo" >> prototype
pkgproto usr=/usr >> prototype

# make package into filesystem format
pkgmk -d . -r .

# translate package into SVR4 datastream
pkgtrans -s . sample.pkg all

cp sample.pkg ..

cd ..
