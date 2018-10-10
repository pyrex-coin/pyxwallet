#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/pyrex-coin/Pyrex.git"
version="release-v0.12.3-ledger"

if [ ! -d "Pyrex" ]; then
  git clone ${url} -b ${version}
  cd Pyrex
  git submodule update --recursive --init
else
  cd Pyrex
  git checkout ${version}
  git submodule update --recursive --init
fi
