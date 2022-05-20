#!/bin/bash
#

echo "deploy mermaidcli container"

kubectl apply -f deployment.yaml --namespace r-mordasiewicz

echo "kubectl exec --namespace r-mordasiewicz -it mermaidcli -c mermaidcli -- /bin/bash"
