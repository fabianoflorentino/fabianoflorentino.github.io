FROM alpine

RUN adduser --disabled-password --gecos "" hugo \
    && apk add hugo \
    && mkdir /site

WORKDIR /site

EXPOSE 1313

USER hugo

ENTRYPOINT ["hugo","server","--bind","0.0.0.0","--log","--logFile","/var/log/server.log"]