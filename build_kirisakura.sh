#!/bin/bash
echo
echo "Issue Build Commands"
echo

mkdir -p out
export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH=${HOME}/toolchains/clang-r383902b1/bin
export PATH=${CLANG_PATH}:${PATH}
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE="${HOME}/toolchains/gcc/bin/aarch64-linux-android-"
export CROSS_COMPILE_ARM32="${HOME}/toolchains/gcc-arm/bin/arm-linux-androideabi-"
export PATH="${HOME}/toolchains/clang-r383902b1/bin:${PATH}"
export LD_LIBRARY_PATH="${HOME}/toolchains/clang-r383902b1/lib:${LD_LIBRARY_PATH}"

echo
echo "Set DEFCONFIG"
echo 
# make CC=clang O=out kirisakura_defconfig
#make CC=clang O=out b1c1_defconfig
#nano out/.config
echo
echo "Build The Good Stuff"
echo 

make CC=clang O=out -j24
