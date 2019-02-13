FROM alpine:3.9
LABEL maintainer="Marc Wickenden <marc@4armed.com>"

ENV VERSION 2.8.4

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update --no-cache add \
    curl \
    git \
    openssh-client \
    hub
