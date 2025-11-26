kubectl create -f https://download.elastic.co/downloads/eck/3.2.0/crds.yaml
curl -s https://download.elastic.co/downloads/eck/3.2.0/operator.yaml | \
  sed '/- name: manager/,/image:/ s/image:.*/&\n          securityContext:\n            runAsUser: 1000/' | \
  kubectl apply -f -