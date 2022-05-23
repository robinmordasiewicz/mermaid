FROM minlag/mermaid-cli:latest

#USER root
#RUN apk --no-cache add shadow
#RUN    usermod -u 1000 mermaidcli
#RUN    groupmod -g 1000 mermaidcli
#RUN    chown -R mermaidcli:mermaidcli /home/mermaidcli

#USER mermaidcli

ENTRYPOINT ["/home/mermaidcli/node_modules/.bin/mmdc", "-p", "/puppeteer-config.json"]
