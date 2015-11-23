#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train -solver WeaHW3/solver6a.prototxt -gpu 0
