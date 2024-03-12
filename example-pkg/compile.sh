#!/bin/sh

cd src
cc -o example example.c
cd ..
mkdir -p root/usr/bin/
cp src/example root/usr/bin/example


