#!/bin/bash
set -e
mkdir /etc/rexray
curl -sSL https://rexray.io/install | sh -s -- stable 0.11.3
