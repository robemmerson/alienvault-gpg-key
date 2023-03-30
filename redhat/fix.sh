#!/bin/bash

curl -sSL https://agent-packageserver.alienvault.cloud/repo/GPG.key > /etc/pki/rpm-gpg/RPM-GPG-KEY-alienvault-agent
yum install -y alienvault-agent-20.08.0003.0301
