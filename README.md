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
## tutorial: https://medium.com/@a5822358/kubernetes-82b30b35a497


# Create base app
## adminer
```bash
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