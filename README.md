docker-pydata
=============

Dockerfile for data analysis with Python

Docker image
------------

Pull the image from [Docker Hub](https://hub.docker.com/r/dceoy/pydata/).

```sh
$ docker pull dceoy/pydata
```

Usage
-----

Run a container

```sh
$ docker container run --rm -it -v ${PWD}:/work -w /work -u $(id -u):$(id -g) dceoy/pydata
```
