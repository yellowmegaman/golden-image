#!/bin/bash
set -e
wget -q https://github.com/docker/compose/releases/download/"$DOCKER_COMPOSE_VERSION"/docker-compose-Linux-x86_64 -O /usr/bin/docker-compose
chmod 0750 /usr/bin/docker-compose
chown root:root /usr/bin/docker-compose
