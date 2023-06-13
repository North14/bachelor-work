# CLOUD-NATIVE STORAGE SOLUTIONS FOR KUBERNETES - A performance Comparison

This readme file was created on 2023-06-13 by Filip Andersson

## Information

Bachelor Degree Project in Informatics

First Cycle 30 credits

Spring Term 2023

Student: Filip Andersson

Supervisor: Johan Zaxmy

Examiner: Thomas Fischer

Institution: University of Skövde

Email: a20filan@student.his.se

Date of data collection: 2023-05-18 to 2023-05-23

Geographic location of data collection: Sweden

## Data Description

This dataset contains the configurations files used and logs produced for my bachelor degree project in Informatics.

Logs are produced output from the Kubernetes disk benchmarking tool dbench: https://github.com/leeliu/dbench

Logs can be found in the 'a20filan_bachelors_work_logs.zip' zip file and subdivided in folders by platform, storage solution, and test occasion.

Configuration files for deploying test sequence, and setting up infrastructure and storage solutions, can be found in 'a20filan_bachelors_work_configuration.zip' and is subdivided by platform, storage solution or infrastructure.

Folder 'AWS' contains the configuration files for deploying infrastructure and setting up storage solutions and test procedure on Amazon Elastic Kubernetes Service

Infrastructure for AWS can be found in folder 'aws/learn-teraform-provision-eks-cluster' and is based on terraform script from Hashicorp: https://developer.hashicorp.com/terraform/tutorials/kubernetes/aks


Folder 'azure' contains the configuration files for deploying infrastructure and setting up storage solutions and test procedure on Microsoft Azure Kubernetes Service

Infrastructure for Azure can be found in folder 'azure/learn-teraform-provision-aks-cluster' and is based on terraform script from Hashicorp: https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks

## File structure

### a20filan_bachelors_work_configuration.zip

```
aws
├── learn-terraform-provision-eks-cluster
│   ├── LICENSE
│   ├── main.tf
│   ├── README.md
│   ├── terraform.tf
│   └── variables.tf
├── openebs
│   ├── cspc.yaml
│   ├── cstor-csi-disk.yaml
│   ├── cstor-operator.yaml
│   ├── dbench.yaml
│   └── openebs-amazonlinux-setup.yaml
├── portworx
│   ├── dbench.yaml
│   ├── pxoperator.yaml
│   └── storagecluster.yaml
├── rook-ceph
│   ├── cluster.yaml
│   ├── common.yaml
│   ├── crds.yaml
│   ├── dbench.yaml
│   ├── filesystem.yaml
│   ├── operator.yaml
│   ├── storageclass.yaml
│   └── toolbox.yaml
└── standard
    └── dbench.yaml
azure
├── learn-terraform-provision-aks-cluster
│   ├── aks-cluster.tf
│   ├── clean.sh
│   ├── deploy.sh
│   ├── LICENSE
│   ├── outputs.tf
│   ├── README.md
│   ├── variables.tf
│   └── versions.tf
├── openebs
│   ├── cspc.yaml
│   ├── cstor-csi-disk.yaml
│   ├── cstor-operator.yaml
│   └── dbench.yaml
├── portworx
│   ├── azure-portworx-test.sh
│   ├── dbench.yaml
│   ├── pxoperator.yaml
│   └── storagecluster.yaml
├── rook-ceph
│   ├── cluster.yaml
│   ├── common.yaml
│   ├── crds.yaml
│   ├── dbench.yaml
│   ├── filesystem.yaml
│   ├── operator.yaml
│   ├── storageclass.yaml
│   └── toolbox.yaml
└── standard
    └── dbench.yaml
```

### a20filan_bachelors_work_logs.zip

```
aws
├── openebs
│   ├── occasion1
│   │   ├── openebs1
│   │   ├── openebs2
│   │   ├── openebs3
│   │   ├── openebs4
│   │   └── openebs5
│   ├── occasion2
│   │   ├── openebs1
│   │   ├── openebs2
│   │   ├── openebs3
│   │   ├── openebs4
│   │   └── openebs5
│   ├── occasion3
│   │   ├── openebs1
│   │   ├── openebs2
│   │   ├── openebs3
│   │   ├── openebs4
│   │   └── openebs5
│   └── occasion4
│       ├── openebs1
│       ├── openebs2
│       ├── openebs3
│       ├── openebs4
│       └── openebs5
├── portworx
│   ├── occasion1
│   │   ├── portworx1
│   │   ├── portworx2
│   │   ├── portworx3
│   │   ├── portworx4
│   │   └── portworx5
│   ├── occasion2
│   │   ├── portworx1
│   │   ├── portworx2
│   │   ├── portworx3
│   │   ├── portworx4
│   │   └── portworx5
│   ├── occasion3
│   │   ├── portworx1
│   │   ├── portworx2
│   │   ├── portworx3
│   │   ├── portworx4
│   │   └── portworx5
│   └── occasion4
│       ├── portworx1
│       ├── portworx2
│       ├── portworx3
│       ├── portworx4
│       └── portworx5
├── rook-ceph
│   ├── occasion1
│   │   ├── rook-ceph1
│   │   ├── rook-ceph2
│   │   ├── rook-ceph3
│   │   ├── rook-ceph4
│   │   └── rook-ceph5
│   ├── occasion2
│   │   ├── rook-ceph1
│   │   ├── rook-ceph2
│   │   ├── rook-ceph3
│   │   ├── rook-ceph4
│   │   └── rook-ceph5
│   ├── occasion3
│   │   ├── rook-ceph1
│   │   ├── rook-ceph2
│   │   ├── rook-ceph3
│   │   ├── rook-ceph4
│   │   └── rook-ceph5
│   └── occasion4
│       ├── rook-ceph1
│       ├── rook-ceph2
│       ├── rook-ceph3
│       ├── rook-ceph4
│       └── rook-ceph5
└── standard
    ├── occasion1
    │   ├── standard1
    │   ├── standard2
    │   ├── standard3
    │   ├── standard4
    │   └── standard5
    ├── occasion2
    │   ├── standard1
    │   ├── standard2
    │   ├── standard3
    │   ├── standard4
    │   └── standard5
    ├── occasion3
    │   ├── standard1
    │   ├── standard2
    │   ├── standard3
    │   ├── standard4
    │   └── standard5
    └── occasion4
        ├── standard1
        ├── standard2
        ├── standard3
        ├── standard4
        └── standard5
azure
├── openebs
│   ├── occasion1
│   │   ├── openebs1
│   │   ├── openebs2
│   │   ├── openebs3
│   │   ├── openebs4
│   │   └── openebs5
│   ├── occasion2
│   │   ├── openebs1
│   │   ├── openebs2
│   │   ├── openebs3
│   │   ├── openebs4
│   │   └── openebs5
│   ├── occasion3
│   │   ├── openebs1
│   │   ├── openebs2
│   │   ├── openebs3
│   │   ├── openebs4
│   │   └── openebs5
│   └── occasion4
│       ├── openebs1
│       ├── openebs2
│       ├── openebs3
│       ├── openebs4
│       └── openebs5
├── portworx
│   ├── occasion1
│   │   ├── portworx1
│   │   ├── portworx2
│   │   ├── portworx3
│   │   ├── portworx4
│   │   └── portworx5
│   ├── occasion2
│   │   ├── portworx1
│   │   ├── portworx2
│   │   ├── portworx3
│   │   ├── portworx4
│   │   └── portworx5
│   ├── occasion3
│   │   ├── portworx1
│   │   ├── portworx2
│   │   ├── portworx3
│   │   ├── portworx4
│   │   └── portworx5
│   └── occasion4
│       ├── portworx1
│       ├── portworx2
│       ├── portworx3
│       ├── portworx4
│       └── portworx5
├── rook-ceph
│   ├── occasion1
│   │   ├── rook-ceph1
│   │   ├── rook-ceph2
│   │   ├── rook-ceph3
│   │   ├── rook-ceph4
│   │   └── rook-ceph5
│   ├── occasion2
│   │   ├── rook-ceph1
│   │   ├── rook-ceph2
│   │   ├── rook-ceph3
│   │   ├── rook-ceph4
│   │   └── rook-ceph5
│   ├── occasion3
│   │   ├── rook-ceph1
│   │   ├── rook-ceph2
│   │   ├── rook-ceph3
│   │   ├── rook-ceph4
│   │   └── rook-ceph5
│   └── occasion4
│       ├── rook-ceph1
│       ├── rook-ceph2
│       ├── rook-ceph3
│       ├── rook-ceph4
│       └── rook-ceph5
└── standard
    ├── occasion1
    │   ├── standard1
    │   ├── standard2
    │   ├── standard3
    │   ├── standard4
    │   └── standard5
    ├── occasion2
    │   ├── standard1
    │   ├── standard2
    │   ├── standard3
    │   ├── standard4
    │   └── standard5
    ├── occasion3
    │   ├── standard1
    │   ├── standard2
    │   ├── standard3
    │   ├── standard4
    │   └── standard5
    └── occasion4
        ├── standard1
        ├── standard2
        ├── standard3
        ├── standard4
        └── standard5
```
