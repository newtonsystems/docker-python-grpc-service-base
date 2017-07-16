#
# A Docker Base Image for a gRPC python microservice
#
#
# Please README.md for how to run this Docker Container
#
#
#  

# Our aim to make this image as small as possible
# We use alpine over Debian as its only 5MB
FROM python:2.7.13-alpine
LABEL maintainer "james.tarball@googlemail.co.uk"

ENV TERM=xterm

# Add Label Badges to Dockerfile powered by microbadger
ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="e.g. https://github.com/microscaling/microscaling"

# Can set the build environments e.g. 'dev' 'test' 'prod'
ARG APP_ENV=prod
ENV ENV_TYPE ${APP_ENV}

ENV APP_DIR /app
ENV BUILD_DIR /tmp
ENV PYTHON_PACKAGE_LOCATION /usr/local/src

ENV DEVPI_SERVER https://devpi.jtarball.co.uk


RUN apk add --update --virtual .build-deps \
        git \
        bash \
        python-dev \
        py-pip \
        build-base \
        git \
        musl-dev \
        linux-headers \
        make \
        gcc \
        g++ \
        autoconf \
        automake \
        libtool \
        inotify-tools \
    && rm -rf /var/cache/apk/*

