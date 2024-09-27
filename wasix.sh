#!/bin/bash

set -xe

cmake --toolchain cross_toolchain.cmake -S . -B out -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=out/install -DENABLE_WERROR=OFF -DBUILD_STATIC_LIB=ON -DBUILD_TESTS=OFF -DCMAKE_SKIP_INSTALL_RPATH=YES -DCMAKE_SKIP_RPATH=YES -DWASIX=YES

cmake --build out --config Release -v