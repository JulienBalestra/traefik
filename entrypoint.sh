#!/bin/bash


if [ -f /etc/traefik/traefik.toml ]
then
    exec /opt/traefik -c /etc/traefik/traefik.toml
else
    exec /opt/traefik
fi