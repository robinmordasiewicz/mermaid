FROM minlag/mermaid-cli:latest

USER root
RUN npm install -g @mermaid-js/mermaid-cli
USER mermaidcli
ENTRYPOINT ["/usr/bin/mmdc", "-p", "/puppeteer-config.json"]
CMD [ "--help" ]
#ENTRYPOINT [""]
#CMD [ "" ]

