#!/bin/bash
set -e
#get the latest glamorous toolkit vm
curl -L https://github.com/feenkcom/opensmalltalk-vm/releases/latest/download/build-artifacts.zip -o build-artifacts.zip
unzip build-artifacts.zip
unzip build-artifacts/GlamorousToolkitVM-*-linux64-bin.zip
# get the latest pharo image
# curl -L https://get.pharo.org/64/80 | bash
# get the latest GT image
curl -L -O https://github.com/feenkcom/gtoolkit/releases/latest/download/GT.zip
unzip GT.zip

#load our own code on top of pharo
./glamoroustoolkit GlamorousToolkit/GlamorousToolkit.image st load.st
