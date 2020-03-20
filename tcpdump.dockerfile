ARG ALPINE_BASE
FROM alpine:${ALPINE_BASE}
RUN apk add --update \
    tcpdump \
  && rm -rf /var/cache/apk/*
