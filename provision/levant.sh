#!/bin/bash
set -e
wget -q https://github.com/jrasell/levant/releases/download/"$LEVANT_VERSION"/linux-amd64-levant -O /usr/bin/levant
chmod 0750 /usr/bin/levant
chown root:root /usr/bin/levant
