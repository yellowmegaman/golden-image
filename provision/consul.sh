#!/bin/bash
set -e
wget -q https://releases.hashicorp.com/consul/"$CONSUL_VERSION"/consul_"$CONSUL_VERSION"_linux_amd64.zip -O /tmp/consul.zip
unzip -oq /tmp/consul.zip -d /usr/bin
chmod 0750 /usr/bin/consul
mkdir /etc/consul /var/consul
rm /tmp/consul.zip
mkdir -p /etc/consul /var/consul
chown root:root /usr/bin/consul
chmod -R 0600 /etc/consul /var/consul
