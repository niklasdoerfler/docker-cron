FROM alpine:latest

RUN apk add --no-cache \
    openssh \
    sshpass \
    bash \
    rsync \
    tar

COPY docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
