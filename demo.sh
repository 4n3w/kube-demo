

NAMESPACE=kube-demo

kubectl create namespace $NAMESPACE

# Create the pods 
kubectl --namespace=$NAMESPACE create -f resources/demo-deployment.yml

# Inspect the deployment

kubectl --namespace=$NAMESPACE get deployments
kubectl --namespace=$NAMESPACE get pods

kubectl --namespace=$NAMESPACE get pods

# Create the Service
kubectl --namespace=$NAMESPACE create -f resources/demo-service.yml

# Route a hostname to the service via ingress

# Before we can do this, we need to enable the ingress plugin for minikube 
# https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/

kubectl --namespace=$NAMESPACE create -f resources/demo-ingress.yml

