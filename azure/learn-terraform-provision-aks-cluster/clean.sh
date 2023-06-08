#!/usr/bin/env bash

terraform plan -destroy -out main.destroy.tfplan
terraform apply main.destroy.tfplan
