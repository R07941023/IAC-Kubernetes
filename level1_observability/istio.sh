export ISTIO_VERSION="1.27.3"
export ISTIO_ARCH="x86_64"
export ISTIO_DIR="/tmp/istio-$ISTIO_VERSION" 

echo "--- download istio cli"
mkdir -p $ISTIO_DIR
cd /tmp
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=$ISTIO_VERSION TARGET_ARCH=$ISTIO_ARCH sh -
export PATH=$ISTIO_DIR/bin:$PATH

cd $ISTIO_DIR
echo "--- check istio version ---"
istioctl version

echo "--- install istio controller plane for default ---"
istioctl install --set profile=default -y  
kubectl get pods -n istio-system

echo "--- install plugin ---"
kubectl apply -f samples/addons
echo "--- watting for success ---"
kubectl rollout status deployment/kiali -n istio-system

echo "---  istio tracing ---"
kubectl label namespace app istio-injection=enabled --overwrite