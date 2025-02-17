REM ------- Remove pods -------
REM kubectl delete pods gitlab-0 -n infra-net --force
kubectl delete pods mariadb-one-0 -n infra-net --force
kubectl delete pods minio-one-0 -n infra-net --force

REM ------- Remove deployment -------
REM kubectl delete statefulsets gitlab -n infra-net
kubectl delete statefulsets mariadb-one -n infra-net
kubectl delete statefulsets minio-one -n infra-net

REM ------- Remove pvc -------
REM kubectl delete pvc gitlab-config-pvc -n infra-net
REM kubectl delete pvc gitlab-data-pvc -n infra-net
REM kubectl delete pvc gitlab-log-pvc -n infra-net
kubectl delete pvc mariadb-data-pvc -n infra-net
kubectl delete pvc minio-data-pvc -n infra-net

REM ------- Remove pv -------
REM kubectl delete pv gitlab-config-pv
REM kubectl delete pv gitlab-data-pv
REM kubectl delete pv gitlab-log-pv
kubectl delete pv mariadb-data-pv
kubectl delete pv minio-data-pv

pause