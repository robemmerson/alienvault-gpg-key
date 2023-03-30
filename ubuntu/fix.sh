#!/bin/bash

curl -sSL https://agent-packageserver.alienvault.cloud/repo/GPG.key | apt-key add -
apt-get update
apt-get install -y alienvault-agent=20.08.0003.0301
