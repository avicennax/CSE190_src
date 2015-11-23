#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train -solver LuttrellHW3/solver_txt.prototxt -gpu 0
