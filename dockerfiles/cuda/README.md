## docker version
20.10.17

## cuda version
11.7

## nvidia driver version
510

## ubuntu version
20.04

## Run:

```bash
# container port: 8022,
# container name: cuda-docker
# image id: eb2c0fba9b01
nvidia-docker run --rm --gpus=all -p 8022:22 --env NVIDIA_DISABLE_REQUIRE=1 -it --privileged=true --name cuda-docker eb2c0fba9b01 /bin/bash
```

## Setup SSH
https://towardsdatascience.com/effective-deep-learning-development-environment-with-pycharm-and-docker-34018f122d92

### Inspect Information
```bash
docker inspect cuda-docker
```

### Commit Dockerfile
```bash
# image name: nvidia/cuda:v1
# repository: nvidia/cuda
# tag: v1
docker commit cuda-docker nvidia/cuda:v1
```
