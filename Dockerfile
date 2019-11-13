FROM alpine:3.10

ADD tini /usr/bin/tini

ENTRYPOINT ["/usr/bin/tini", "--"]