echo "[Start] namespace: infra-net"
kubectl create -n infra-net secret generic keyvault --from-env-file=secret_infra_net.ini --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
kubectl create -n infra-net secret tls mydormroom-tls --cert=mydormroom.crt --key=mydormroom.key --save-config --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: infra-net"

echo "[Start] namespace: game"
kubectl create -n game secret generic keyvault --from-env-file=secret_game.ini --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: game"

echo "[Start] namespace: dashboard"
kubectl create -n kubernetes-dashboard secret tls mydormroom-tls --cert=mydormroom.crt --key=mydormroom.key --save-config --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: dashboard"

echo "[Start] namespace: argocd"
kubectl create -n argocd secret tls mydormroom-tls --cert=mydormroom.crt --key=mydormroom.key --save-config --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: argocd"

echo "[Start] namespace: ai"
kubectl create -n ai secret tls mydormroom-tls --cert=mydormroom.crt --key=mydormroom.key --save-config --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: ai"

echo "[Start] namespace: app
kubectl create -n app secret tls mydormroom-tls --cert=mydormroom.crt --key=mydormroom.key --save-config --dry-run=client -o yaml > temp-secret.yaml
kubectl apply -f temp-secret.yaml
del temp-secret.yaml
echo "[End] namespace: app"

pause
