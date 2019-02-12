FROM gcr.io/cloud-builders/git
LABEL maintainer="Marc Wickenden <marc@4armed.com>"

ENV VERSION 2.8.4

RUN curl -s -L -o /hub.tgz \
   https://github.com/github/hub/releases/download/v${VERSION}/hub-linux-amd64-${VERSION}.tgz && \
   tar xvzf /hub.tgz && \
   mv hub-linux-amd64-${VERSION}/bin/hub /usr/local/bin/hub && \
   chmod +x /usr/local/bin/hub && \
   rm -rf /hub.tgz hub-linux-amd64-2.8.4/
