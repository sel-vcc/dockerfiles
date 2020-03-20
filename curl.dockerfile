ARG ALPINE_BASE
FROM alpine:${ALPINE_BASE}
RUN apk add --update \
    ca-certificates \
    curl \
  && rm -rf /var/cache/apk/*
