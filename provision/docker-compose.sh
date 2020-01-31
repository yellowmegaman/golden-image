#!/bin/bash
set -e
curl -L https://github.com/docker/compose/releases/download/"$DOCKER_COMPOSE_VERSION"/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
chmod 0755 /usr/bin/docker-compose
chown root:root /usr/bin/docker-compose
