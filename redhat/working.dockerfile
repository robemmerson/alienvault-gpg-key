FROM redhat/ubi8:latest

RUN yum update -y && \
    yum install -y yum-utils

RUN curl -L https://agent-packageserver.alienvault.cloud/repo/GPG.key > /etc/pki/rpm-gpg/RPM-GPG-KEY-alienvault-agent

RUN echo -n W2FsaWVudmF1bHQtYWdlbnQtcnBtXQpuYW1lPW5hbWU9QWxpZW5WYXVsdCBBZ2VudCBSUE0gUmVwbyAtICRiYXNlYXJjaApiYXNldXJsPWh0dHBzOi8vYWdlbnQtcGFja2FnZXNlcnZlci5hbGllbnZhdWx0LmNsb3VkL3JlcG8vcnBtLyRiYXNlYXJjaC8KZW5hYmxlZD0xCmdwZ2tleSA9IGZpbGU6Ly8vZXRjL3BraS9ycG0tZ3BnL1JQTS1HUEctS0VZLWFsaWVudmF1bHQtYWdlbnQKZ3BnY2hlY2s9MQo= | base64 -d > /tmp/alienvault-agent.repo && \
    yum-config-manager --add-repo /tmp/alienvault-agent.repo && rm -f /tmp/alienvault-agent.repo && \
    yum-config-manager --enable alienvault-agent-rpm

CMD [ "yum", "install", "-y", "alienvault-agent-20.08.0003.0301" ]