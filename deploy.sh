#!/bin/bash
#

echo "deploy mermaid-cli container"

kubectl apply -f deployment.yaml --namespace r-mordasiewicz

echo "kubectl exec --namespace r-mordasiewicz -it mermaid-cli -c mermaid-cli -- /bin/bash"
