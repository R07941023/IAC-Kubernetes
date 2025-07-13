helm repo add elastic https://helm.elastic.co
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install elasticsearch elastic/elasticsearch -n logging ^
  --set replicas=1 ^
  --set minimumMasterNodes=1 ^
  --set resources.requests.cpu="100m" ^
  --set resources.requests.memory="512Mi
helm install fluent-bit bitnami/fluent-bit -n logging ^
  --set backend.type=es ^
  --set backend.es.host=elasticsearch.logging.svc.cluster.local ^
  --set backend.es.port=9200 ^
  --set backend.es.logstash_format=true ^
  --set input.tail.enabled=true ^
  --set input.tail.path="/var/log/containers/*.log" ^
  --set input.tail.parser=docker ^
  --set input.tail.tag="kube.*" ^
  --set filters.kubernetes.enabled=true ^
  --set filters.kubernetes.match="kube.*"
helm install kibana elastic/kibana -n logging ^
  --set service.type=NodePort
pause
