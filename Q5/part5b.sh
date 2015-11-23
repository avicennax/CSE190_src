#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train -solver LuttrellHW3/part5b_solver.prototxt -gpu 0
