#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train -solver LuttrellHW3/solver.prototxt -gpu 0
