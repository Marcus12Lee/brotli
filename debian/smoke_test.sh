#!/bin/sh

set -eux

(
for d in .pybuild/python*_3*; do
    cd $d/build
    python3 -c 'import brotli as b; assert b.decompress(b.compress(b"x")) == b"x"'
done
)

(
for d in .pybuild/python*_2*; do
    cd $d/build
    python2 -c 'import brotli as b; assert b.decompress(b.compress(b"x")) == b"x"'
done
)
