FROM alpine:edge
RUN apk add socat
ENTRYPOINT [ "socat" ]
CMD [ "-h" ]
