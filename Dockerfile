FROM alpine:3.10

ENV TINI_VERSION v0.18.0

# Add Tini
RUN apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--"]