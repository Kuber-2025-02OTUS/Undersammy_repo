cd terraform_YC_k8s && terraform apply -auto-approve

yc managed-kubernetes cluster get-credentials skyfly535 --external

cd ../argocd && helmfile apply && cd ..

helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace

kubectl apply -f appproject.yaml

kubectl apply -f kubernetes-network.yaml

kubectl apply -f kubernetes-templating.yaml