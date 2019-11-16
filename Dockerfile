FROM alpine:3.10

ENV TINI_VERSION v0.18.0

# Add Tini
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/local/tini
RUN chmod +x /tini

ENTRYPOINT ["usr/local/bintini", "--"]