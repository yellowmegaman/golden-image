#!/bin/bash
set -e
wget -q https://releases.hashicorp.com/nomad/"$NOMAD_VERSION"/nomad_"$NOMAD_VERSION"_linux_amd64.zip -O /tmp/nomad.zip
unzip -oq /tmp/nomad.zip -d /usr/bin
chmod 0750 /usr/bin/nomad
chown root:root /usr/bin/nomad
mkdir /etc/nomad /var/nomad
rm /tmp/nomad.zip
mkdir -p /etc/nomad /var/nomad
chmod -R 0600 /etc/nomad /var/nomad
