FROM alpine
LABEL maintainer="prima101112@gmail.com"

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

RUN apk add mysql-client \
    postgresql-client

RUN apk add openssh

WORKDIR /palugada
COPY palugada .
COPY authorized_keys .ssh/authorized_keys
COPY entrypoint.sh .
RUN chmod +x /palugada/entrypoint.sh
COPY entrypoint.sh .
ENTRYPOINT /palugada/entrypoint.sh

