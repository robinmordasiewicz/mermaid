FROM minlag/mermaid-cli:latest

USER root
RUN apk --no-cache add shadow
#RUN    usermod -u 1001 node
#RUN    groupmod -g 1001 node
#RUN    chown -R node:node /home/node
RUN    usermod -u 1000 mermaidcli
RUN    groupmod -g 1000 mermaidcli
RUN    chown -R mermaidcli:mermaidcli /home/mermaidcli

USER mermaidcli
RUN npm install -g @mermaid-js/mermaid-cli
