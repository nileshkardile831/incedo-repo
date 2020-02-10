#!/bin/bash
# This script is used to provision aws resources using terraform.

set -xv

home_dir=/var/lib/jenkins/workspace/EKS-Demo-Infra/infra
cd $home_dir
sudo /usr/bin/terraform init;
sudo /usr/bin/terraform plan;
#sudo /usr/bin/terraform apply;
