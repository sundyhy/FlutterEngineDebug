#!/bin/sh

echo ""
cd ./flutterengine/src

./flutter/tools/gn --unoptimized
./flutter/tools/gn --android --unoptimized
ninja -C out/android_debug_unopt && ninja -C out/host_debug_unopt

rm ../../fe/libs/armeabi-v7a/libflutter.so
cp ./out/android_debug_unopt/libflutter.so ../../fe/libs/armeabi-v7a
