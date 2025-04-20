echo "[Start] namespace: infra-net"
kubectl create -n infra-net secret generic keyvault --from-env-file=secret_infra_net.ini --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: infra-net"

echo "[Start] namespace: game"
kubectl create -n game secret generic keyvault --from-env-file=secret_game.ini --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: game"

pause
