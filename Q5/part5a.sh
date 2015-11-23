#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train -solver LuttrellHW3/part5asolver.prototxt -gpu 0
