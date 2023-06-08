#!/usr/bin/env bash

# save and apply terraform plan
terraform plan -out main.tfplan
terraform apply main.tfplan

# copy k8s config file and open cluster in browser
# az aks get-credentials --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)
# az aks browse --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)

# attach empty disk to vmss
# az vmss disk attach -g MC_$(terraform output -raw resource_group_name)_$(terraform output -raw kubernetes_cluster_name)_northeurope --vmss-name aks-default-64302769-vmss --size-gb 1024
# apply vmss config to each node
# az vmss update-instances -g MC_$(terraform output -raw resource_group_name)_$(terraform output -raw kubernetes_cluster_name)_northeurope -n aks-default-64302769-vmss --instance-ids '*'

echo "# az aks get-credentials --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)"
echo "# az aks browse --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)"
echo "#"
echo "# Create disk"
echo "# az vmss disk attach"
echo "#"
echo "# Update instances"
echo "# az vmss update-instances"
echo "#"
