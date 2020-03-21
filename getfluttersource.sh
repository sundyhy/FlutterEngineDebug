#!/bin/sh

echo "install ant"
brew install ant

echo "install ninja"
brew install ninja

cd ./flutterengine

echo "sync flutter engine source"
gclient sync

echo "change to branch [master]"
cd ./src/flutter
git checkout master
git pull