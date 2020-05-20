# Dockerfile

## base
Dockerfile for Ubuntu applications such as Vim.
1. Build docker image.
```
$ docker build -t ubuntu.base -f ${PWD}/docker/base/Dockerfile .
```
2. Run a container.
```
$ docker run -it --rm -v ${PWD}:/workspace ubuntu.base:latest /bin/zsh
```
- (Option) You can run a container from an alias.
```
$ dcr
```

## conda
Dockerfile for machine learning.
1. Build docker image.
```
$ docker build -t ubuntu.conda -f ${PWD}/docker/conda/Dockerfile .
```
2. Run a container.
```
$ docker run -it --rm -v ${PWD}:/workspace ubuntu.conda:latest /bin/zsh
```
- (Option) You can run a container from an alias.
```
$ dcrml
```

## Pytorch
Dockerfile for Pytorch
1. Build docker image.
```
$ docker build -t ubuntu.pth -f ${PWD}/docker/pth/Dockerfile .
```
2. Run a container.
```
$ docker run -it --rm -v ${PWD}:/workspace ubuntu.pth:latest /bin/zsh
```
- (Option) You can run a container from an alias.
```
$ dcrpth
```
