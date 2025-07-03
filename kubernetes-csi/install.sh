cd terraform_YC_k8s

terraform init -upgrade

terraform apply -input=false  -compact-warnings -auto-approve

yc k8s cluster get-credentials --id $(yc k8s cluster list  | grep 'RUNNING' | awk -F '|' '{print $2}')  --external --force

helm repo add yandex-s3 https://yandex-cloud.github.io/k8s-csi-s3/charts

helm install csi-s3 yandex-s3/csi-s3

cd .. && kubectl apply -f manifest/storageClass.yaml

kubectl apply -f  manifest/pvc.yaml

kubectl apply -f  manifest/s3-test-pod.yaml