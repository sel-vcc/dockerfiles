FROM docker:19.03.5
RUN apk add --update \
    python \
    py-pip \
  && pip install awscli \
  && rm -rf /var/cache/apk/*
