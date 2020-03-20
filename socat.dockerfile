ARG ALPINE_BASE
FROM alpine:${ALPINE_BASE}
RUN apk add --update \
    socat \
  && rm -rf /var/cache/apk/*
ENTRYPOINT [ "socat" ]
CMD [ "-h" ]
