#!/bin/sh
if ! test -f MobileNetSSD_train.prototxt ;then
	echo "error: MobileNetSSD_train.prototxt does not exist."
	echo "please use the gen_model.sh to generate your own model."
        exit 1
fi
mkdir -p snapshot
../examples/caffe/build/tools/caffe train -solver="solver_train.prototxt" \
-weights="/home/docker/dnguyen/Dev/HumanDetection/workspace/pedestrians/snapshot/mobilenet_iter_94210.caffemodel" \
-gpu 0 
