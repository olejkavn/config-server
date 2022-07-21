mvn clean install
docker build -t pet-project/config-server .
docker tag pet-project/config-server registry.digitalocean.com/pet-project/config-server
docker push registry.digitalocean.com/pet-project/config-server
kubectl delete deploy config-server
kubectl delete service config-server
kubectl create -f kube-manifests/deployment.yaml
kubectl get pods

