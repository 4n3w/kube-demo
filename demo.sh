
kubectl create namespace kube-demo

# Create the pods 
kubectl create -f resources/demo-deployment.yml -n kube-demo

# Inspect the deployment

kubectl  get deployments -n kube-demo
kubectl  get pods -n kube-demo

kubectl  get pods -n kube-demo

# Create the Service
kubectl  create -f resources/demo-service.yml -n kube-demo

# Route a hostname to the service via ingress

# Before we can do this, we need to enable the ingress plugin for minikube 
# https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/

kubectl  create -f resources/demo-ingress.yml -n kube-demo

