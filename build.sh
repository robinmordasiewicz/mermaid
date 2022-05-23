#!/usr/bin/env bash
#

set -x

docker build -t robinhoodis/mermaid-cli:latest .
docker push robinhoodis/mermaid-cli:latest

#COMMAND=(/bin/bash -c "mmdc -p /puppeteer-config.json -i intro.mmd -o intro.png -C mermaid.css -c config.json -t neutral")
COMMAND=(/bin/sh -c "/bin/sh")

DOC_IMG="robinhoodis/mermaid-cli:latest"

exec docker run --rm -it \
  -v "$PWD":"/home/ubuntu" --workdir "/home/ubuntu" \
  ${DOCKER_RUN_ARGS} \
  ${DOC_IMG} "${COMMAND[@]}"
