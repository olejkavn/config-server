mvn clean install
docker build -t config-service .
docker tag config-service otymkovskyi/config-service
docker push otymkovskyi/config-service
kubectl delete deploy config-service
kubectl delete service config-service
kubectl create -f kube-manifests/deployment.yaml
kubectl get pods

