## Вывод команд
- kubectl get node -o wide --show-labels
```
PS C:\Users\sabur> kubectl get node -o wide
NAME                        STATUS   ROLES    AGE     VERSION   INTERNAL-IP   EXTERNAL-IP      OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME
cl19i0klotnnpkvgf1h4-ewip   Ready    <none>   5m52s   v1.31.2   10.128.0.36   84.201.130.24    Ubuntu 20.04.6 LTS   5.4.0-208-generic   containerd://1.6.28
cl1vpcewg63t6ekqk6i5-oxin   Ready    <none>   7m38s   v1.31.2   10.128.0.26   84.252.131.116   Ubuntu 20.04.6 LTS   5.4.0-208-generic   containerd://1.6.28
```
- kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints
```
PS C:\Users\sabur> kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints
NAME                        TAINTS
cl19i0pbrtgjvcawp1h4-ewip   [map[effect:NoSchedule key:node-role value:infra]]
cl1erqnhc63t6ekqk6i5-oxin   <none>