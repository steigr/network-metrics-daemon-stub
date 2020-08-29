FROM docker.io/library/alpine:3.12
RUN  adduser -s /bin/false -S -D -H metrics
RUN  apk add --no-cache bash curl jq
COPY bashttpd /bin/bashttpd
COPY bashttpd.conf /bin/bashttpd.conf
COPY docker-entrypoint.sh /bin/network-metrics-daemon
USER metrics
ENTRYPOINT ["network-metrics-daemon"]
