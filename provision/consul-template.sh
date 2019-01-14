#!/bin/bash
set -e
wget -q https://releases.hashicorp.com/consul-template/"$CONSUL_TEMPLATE_VERSION"/consul-template_"$CONSUL_TEMPLATE_VERSION"_linux_amd64.zip -O /tmp/consul-template.zip
unzip -oq /tmp/consul-template.zip -d /usr/bin
chmod 0750 /usr/bin/consul-template
chown root:root /usr/bin/consul-template
mkdir /etc/consul-template /var/consul-template
rm /tmp/consul-template.zip
