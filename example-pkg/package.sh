#!/bin/sh

cd root

# make prototype file to list files to be packaged
echo "i pkginfo" > prototype
pkgproto usr >> prototype

# make package into filesystem format
pkgmk -d . -r .

# translate package into SVR4 datastream (portability? yes please!)
pkgtrans -s . sample.pkg all

cp sample.pkg ..

cd ..
