#!/bin/bash
# Architecture
export ARCH=arm64
export TARGET_ARCH=arm64
make O=out cappu_defconfig
export KBUILD_BUILD_USER=goayandi
export KBUILD_BUILD_HOST=universal
export CROSS_COMPILE=`pwd`/toolchain/bin/aarch64-linux-gnu-
make O=out Image.gz-dtb -j6
