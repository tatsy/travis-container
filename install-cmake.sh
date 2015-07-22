#!/bin/sh
set -e

if [ ! -d "$HOME/cmake/lib" ]; then
  wget http://www.cmake.org/files/v3.2/cmake-3.2.2.tar.gz -O /tmp/cmake-3.2.2.tar.gz;
  tar -xf /tmp/cmake-3.2.2.tar.gz;
  cd cmake-3.2.2;
  mkdir build;
  cd build;
  cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$HOME/cmake && make -j4 && make install;
  cd ../..;
else
  echo 'Using cached directory.';
fi
