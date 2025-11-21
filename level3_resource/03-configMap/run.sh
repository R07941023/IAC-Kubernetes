#!/bin/bash

echo "[Start] Create maplestory"
kubectl create configmap maplestory \
  --from-file=maplestory-setting.ini \
  -n game \
  --dry-run=client -o yaml > temp-configmap.yaml
kubectl apply -f temp-configmap.yaml
rm temp-configmap.yaml
echo "[End] Create maplestory"

echo "[Start] Create prometheus"
kubectl create configmap prometheus \
  --from-file=prometheus.yml \
  -n infra-net \
  --dry-run=client -o yaml > temp-configmap.yaml
kubectl apply -f temp-configmap.yaml
rm temp-configmap.yaml
echo "[End] Create prometheus"