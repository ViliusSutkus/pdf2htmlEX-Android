#!/bin/sh
set -euo pipefail

THIS_FILE=$(readlink -f "$0")
BASEDIR=$(dirname "$THIS_FILE")

THIRDPARTY_PREFIX=$1
PC_TARGET_DIR=$THIRDPARTY_PREFIX/lib/pkgconfig/
mkdir --parents "$PC_TARGET_DIR"

echo "prefix=\"$THIRDPARTY_PREFIX\"" > $PC_TARGET_DIR/iconv.pc
cat $BASEDIR/iconv-Patch-Install-pkg-config.in >> $PC_TARGET_DIR/iconv.pc
