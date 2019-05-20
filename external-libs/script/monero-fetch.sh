#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/pyrex-coin/Pyrex"
version="release-v0.14.0-pyxwallet"

if [ ! -d "Pyrex" ]; then
  git clone ${url} -b ${version}
  cd Pyrex
  git submodule update --recursive --init
else
  cd Pyrex
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
