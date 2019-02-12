#!/bin/bash
set -e
osname=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
osrelease=$(lsb_release -cs)
apt-get update
apt-get -qq install -y apt-transport-https curl
# Repos
curl -fsSL https://download.docker.com/linux/"$osname"/gpg | apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/$osname $osrelease stable" | tee /etc/apt/sources.list.d/docker.list
apt-get update
# New ones
apt-get -qq install -y tree jq gnupg2 ntp htop sudo sysstat dstat bash-completion unzip zip iperf netcat docker-ce="$DOCKER_VERSION~$osname-$osrelease" cloud-init sysstat
# Remove unwanted
apt-get -qq autoremove --purge -y unattended-upgrades snap-confine snapd ubuntu-core-launcher
# Perform dist-upgrade
apt-get -qq -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confnew" dist-upgrade -y
# Cloud user
useradd -m -s /bin/bash -G sudo,docker cloud
# Sysctl
echo "net.ipv4.ip_forward=1" | tee -a /etc/sysctl.conf
mkdir -p /run/docker/plugins
echo 'PermitRootLogin no' | tee -a /etc/ssh/sshd_config
