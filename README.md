# Introduction

# Create resource
```bash
kubectl apply -f ./
```
## resource order
level0_dashboard  
level_namespace  
leve3_resource/01-secret  
leve3_resource/02-rbac  
leve3_resource/03-configMap  
leve3_resource/04-app  
leve2_network/01-service  
leve2_network/02-ingress  

# Dashboard
## get token
```bash
kubectl -n kubernetes-dashboard create token admin --duration=8760h
```
# augoCD
tutorial: https://medium.com/@a5822358/kubernetes-82b30b35a497

# monitor
tutorial: https://medium.com/@a5822358/prometheus-3088279e5dd8

# Set .env file:  /level3_resource/01-secret
## secret_game.ini
```env
server_settings_db_password=
```
## secret_infra_net.ini
```env
GRAFANA_USER=
GRAFANA_PASSWORD=
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