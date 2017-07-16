# docker-python-grpc-service-base

[![](https://images.microbadger.com/badges/image/newtonsystems/docker-python-grpc-service-base.svg)](https://microbadger.com/images/newtonsystems/docker-python-grpc-service-base "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/newtonsystems/docker-python-grpc-service-base:0.1.2.svg)](https://microbadger.com/images/newtonsystems/docker-python-grpc-service-base:0.1.2 "Get your own version badge on microbadger.com")

Available from docker hub as [newtonsystems/tools/docker-python-grpc-service-base](https://hub.docker.com/r/newtonsystems/docker-python-grpc-service-base/)

#### Supported tags and respective `Dockerfile` links

-    [[`v0.1.2`, `v0.1.1`, `v0.1.0`, `latest` (/Dockerfile*)](https://github.com/newtonsystems/docker-python-grpc-service-base/blob/master/Dockerfile)


# A docker base image for a python gRPC microservice

- gRPC support for python
- Python development tools including pip
- Linux Alpine (small linux distro)
- inotify support
- git support


## Why do you need this?
- Speeds up docker builds by using this its base image


## How to Build the Docker Image
- Run docker build

```bash
	docker build -t <TAG_NAME> .
```
- Run docker build for an environment e.g. dev (development)
```bash
	docker build -t <TAG_NAME> --build-arg APP_ENV=dev .
```


## How to use this Base Docker Image
- You should use this in your own Dockerfile. Add the following to the top of your Dockerfile:

```
	FROM newtonsystems/docker-python-grpc-service-base:<VERSION>

```


## How to do a release
- Make sure you are using docker-utils 
i.e.

```bash
export PATH="~/<LOCATION>/docker-utils/bin:$PATH"
```

```
build-tag-push-dockerfile.py  --image "newtonsystems/docker-python-grpc-service-base" --version 0.1.0 --dockerhub_release --github_release
```


## User Feedback

Any feedback or comments  would be greatly appreciated: <james.tarball@newtonsystems.co.uk>


### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/newtonsystems/docker-python-grpc-service-base/issues).

You can also reach me by email. I would be happy to help  <james.tarball@newtonsystems.co.uk>







