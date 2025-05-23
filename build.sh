#!/bin/bash -eu

apply_patch() {
	patch -Np1 -i $1
}

# Build Luanti
pushd luanti

sudo ./util/buildbot/download_toolchain.sh /usr

apply_patch ../001-silence-dirty.patch
apply_patch ../002-run-in-place-0.patch
apply_patch ../003-move-binary-up.patch

EXISTING_MINETEST_DIR=$PWD \
  ./util/buildbot/buildwin$1.sh ../B
