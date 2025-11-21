#!/bin/bash

echo "[Start] Create maplestory"
kubectl create configmap maplestory \
  --from-file=maplestory-setting.ini \
  -n game \
  --dry-run=client -o yaml > temp-configmap.yaml
kubectl apply -f temp-configmap.yaml
rm temp-configmap.yaml
echo "[End] Create maplestory"

echo "[Start] Create grafana dashboards"
kubectl create configmap grafana-dashboards \
  --from-file=kubernetes-monitoring-overview.json \
  --from-file=windows-exporter-dashboard.json \
  -n infra-net \
  --dry-run=client -o yaml > temp-configmap.yaml
kubectl apply -f temp-configmap.yaml
rm temp-configmap.yaml
echo "[End] Create k8s grafana dashboards"
