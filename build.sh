#!/bin/bash
rm -r build
mkdir build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE=toolchain.cmake -DCMAKE_BUILD_TYPE=RELEASE  -GNinja ..
ninja
cd port/boards/emulator
mkdir quake
mv quakembd quake/
cp ../../../../id1 -r quake/id1
