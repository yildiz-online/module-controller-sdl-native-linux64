#!/usr/bin/env bash

TARGET_PATH="../../../../target/classes"
TARGET_LINUX64="$TARGET_PATH/linux64"

cmake . \
-DCMAKE_BUILD_TYPE=Release \
-DLIBRARY_OUTPUT_PATH=${TARGET_LINUX64} \


make
r1=$?

cp lib/libsdl2.so ${TARGET_LINUX64}/libsdl2.so

exit ${r1}
