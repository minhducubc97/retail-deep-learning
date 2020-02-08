#!/bin/sh
#latest=snapshot/mobilenet_iter_73000.caffemodel
latest=$(ls -t snapshot/*.caffemodel | head -n 1)
if test -z $latest; then
	exit 1
fi
../examples/caffe/build/tools/caffe train -solver="solver_test.prototxt" \
--weights=$latest \
-gpu 0
