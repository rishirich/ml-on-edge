#!/bin/bash
# Basic while loop
counter=1
while [ $counter -le 10 ]
do
	echo Iteration number $counter
	python3 benchmark.py zoo:cv/detection/yolo_v3-spp/pytorch/ultralytics/coco/pruned_quant-aggressive_94 --batch-size 16 --quantized-inputs
done
echo All done
