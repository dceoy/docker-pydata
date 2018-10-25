docker-pydata
=============

Dockerfile for data analysis with Python

Docker image
------------

Pull the image from [Docker Hub](https://hub.docker.com/r/dceoy/pydata/).

```sh
$ docker pull dceoy/pydata
```

Image tags:

- `latest`
  - Data analytical stack based on the latest Python
- `dnn-gpu`
  - Data analytical stack with deep learning libraries for GPU
- `dnn-cpu`
  - Data analytical stack with deep learning libraries for CPU

Usage
-----

Run a container

```sh
$ docker container run --rm -it -v ${PWD}:/wd -w /wd -u $(id -u):$(id -g) dceoy/pydata
```
