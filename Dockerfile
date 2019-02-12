FROM alpine:3.9
LABEL maintainer="Marc Wickenden <marc@4armed.com>"

ENV VERSION 2.8.4

RUN apk --update add curl git && \
    curl -s -L -o /hub.tgz \
    https://github.com/github/hub/releases/download/v${VERSION}/hub-linux-amd64-${VERSION}.tgz && \
    tar xvzf /hub.tgz && \
    mv hub-linux-amd64-${VERSION}/bin/hub /usr/local/bin/hub && \
    chmod +x /usr/local/bin/hub && \
    rm -rf /hub.tgz hub-linux-amd64-2.8.4/
