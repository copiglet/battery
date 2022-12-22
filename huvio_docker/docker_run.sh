#!/bin/bash

# IMG="pytorch/pytorch:1.8.1-cuda11.1-cudnn8-devel"
IMG="huvio:v1"

DATA_IN="/home/phenomx/huvio_pack/yolo_docker/input"
DATA_OUT="/home/phenomx/huvio_pack/yolo_docker/output"


# docker run --name yolo-test --gpus all -it --rm -v ${PWD}:/pmx $IMG bash
docker run --name huvio_test --gpus all --rm -it \
  -v ${PWD}:/workspace:rw \
  -v ${DATA_IN}:/workspace/inference/images:rw \
  -v ${DATA_OUT}:/workspace/runs/detect:rw \
  --workdir /workspace \
  ${IMG}