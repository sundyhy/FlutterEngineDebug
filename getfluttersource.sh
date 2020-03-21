#!/bin/sh

echo "install ant"
brew install ant

echo "install ninja"
brew install ninja

cd ./flutterengine

echo "sync flutter engine source"
gclient sync

echo "change to branch [v1.12.13-hotfixes]"
cd ./src/flutter
git checkout v1.12.13-hotfixes
git pull