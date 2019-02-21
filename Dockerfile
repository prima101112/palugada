FROM alpine
MAINTAINER Prima Adi <prima101112@gmail.com>

RUN apk update && apk add \
    tcpdump \
    wget \
    curl \
    git \
    make \
    python \
    iputils \
    vim \
    redis

COPY palugada .
ENTRYPOINT /palugada

