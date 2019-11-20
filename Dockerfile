FROM alpine:3.10

# Add Tini
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/local/bin/tini
RUN chmod +x /usr/local/bin/tini

# Add Tini
RUN apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--"]