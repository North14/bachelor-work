#!/usr/bin/env

# deploy cluster
../learn-terraform-provision-aks-cluster/deploy.sh

# install portworx
./setup-portworx.sh

# run test
kubectl apply -f ./dbench-portworx-100G.yaml

# save results
kubectl logs -f jobs/dbench
