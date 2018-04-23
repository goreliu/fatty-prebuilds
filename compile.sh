#!/bin/bash

export PATH=/bin
make
strip src/fatty.exe

mkdir -p fatty/bin
cp src/fatty.exe fatty/bin
cp /bin/{cyggcc_s-seh-1.dll,cygstdc++-6.dll,cygwin-console-helper.exe,cygwin1.dll} fatty/bin
