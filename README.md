# Introduction

# Create dashboard
## build resource
```bash
kubectl apply -f dashboard-admin.yaml
```
## get token
```bash
kubectl create token kubernetes-dashboard-token -n kubernetes-dashboard
```

# Create augoCD
## build resource
```bash
kubectl create namespace argocd
kubectl apply -n argocd -f argocd.yaml
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d
```

# Create nameSpace
```bash
kubectl create namespace infra-net
```

# Create base app
## adminer
```bash
kubectl apply -f adminer.yaml
kubectl apply -f adminer.yaml
```

# Delete
## Resource
```bash
kubectl delete -f {fileName}.yaml
```
## namespace
```bash
kubectl delete namespace {nameSpace}
```