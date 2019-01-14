#!/bin/bash
set -e
wget -q https://github.com/aelsabbahy/goss/releases/download/v"$GOSS_VERSION"/goss-linux-amd64 -O /usr/bin/goss
chmod 0750 /usr/bin/goss
chown root:root /usr/bin/goss
mkdir /etc/goss
