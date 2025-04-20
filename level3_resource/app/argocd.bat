echo off "[Start] argocd"
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl delete svc argocd-server -n argocd
echo off [End] argocd"
pause