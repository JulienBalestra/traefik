FROM debian:latest

ARG TRAEFIK=https://github.com/containous/traefik/releases/download/v1.0.0-rc3/traefik_linux-amd64


RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install curl -y && \
    mkdir -p /etc/traefik && \
    curl -L $TRAEFIK -o /opt/traefik

ENTRYPOINT ["/entrypoint.sh"]
