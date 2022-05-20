FROM minlag/mermaidcli-cli

RUN apk --no-cache add shadow && \
    usermod -u 1001 node && \
    groupmod -g 1001 node && \
    chown -R node:node /home/node && \
    usermod -u 1000 mermaidcli && \
    groupmod -g 1000 mermaidcli && \
    chown -R mermaidcli:mermaidcli /home/mermaidcli

#USER mermaidcli
