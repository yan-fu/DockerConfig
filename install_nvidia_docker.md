docker version: 20.10.17

cuda version: 11.7

nvidia driver version: 510

ubuntu version: 20.04

Test:
```
docker run --rm --gpus=all --env NVIDIA_DISABLE_REQUIRE=1 -it nvidia/cuda:11.7.1-devel-ubuntu20.04 nvidia-smi
```
