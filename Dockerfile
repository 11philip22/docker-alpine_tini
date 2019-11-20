FROM alpine:3.10

# Add Tini
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/local/bin/tini
RUN chmod +x /usr/local/bin/tini

ENTRYPOINT ["/usr/bin/tini", "--"]