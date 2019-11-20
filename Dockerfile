FROM alpine:3.10

# Add Tini
RUN apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--"]