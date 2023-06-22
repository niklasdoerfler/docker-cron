FROM alpine:latest

RUN apk add --no-cache \
    openssh \
    sshpass \
    bash \
    rsync

COPY docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
