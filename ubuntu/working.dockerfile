FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apt-transport-https curl gnupg

RUN bash -c "echo deb [arch=amd64] https://agent-packageserver.alienvault.cloud/repo/deb/ stable main > /etc/apt/sources.list.d/alienvault-agent.list" && \
    curl -sS https://agent-packageserver.alienvault.cloud/repo/GPG.key | apt-key add -

CMD [ "apt-get", "update" ]