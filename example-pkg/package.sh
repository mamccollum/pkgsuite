#!/bin/sh

cd root

# remove old
rm -rf sample* prototype

# make prototype file to list files to be packaged
echo "i pkginfo" >> prototype
for i in `find . -maxdepth 1 -type d -print | sed '1d'`; do
	find $i -print | sed '1d' | pkgproto >> prototype
done

# make package into filesystem format
pkgmk -d . -r .

# translate package into SVR4 datastream
pkgtrans -s . sample.pkg all

cp sample.pkg ..

cd ..
