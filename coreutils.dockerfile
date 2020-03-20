ARG ALPINE_BASE
FROM alpine:${ALPINE_BASE}
RUN apk add --update \
    coreutils \
  && rm -rf /var/cache/apk/*
