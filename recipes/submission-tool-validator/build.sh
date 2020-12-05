#!/bin/bash
set -eu -o pipefail

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
cp -R * $outdir/
cp $RECIPE_DIR/submission-tool-validator.py $outdir/submission-tool-validator
ls -l $outdir
ln -s $outdir/submission-tool-validator $PREFIX/bin
chmod 0755 "${PREFIX}/bin/submission-tool-validator"