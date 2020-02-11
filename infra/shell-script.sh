#!/bin/bash
# This script is used to provision aws resources using terraform.

set -xv

home_dir=/var/lib/jenkins/workspace/EKS-Demo-Infra/infra
cd $home_dir
sudo /usr/bin/terraform init;
sudo /usr/bin/terraform plan;
sudo /usr/bin/terraform apply -auto-approve;
sudo /home/ec2-user/istio-install/istio-1.4.3/bin/istioctl manifest apply --set profile=demo

cd ../third_party_framework
sudo /usr/bin/kubectl apply -f grafana.yaml
sudo /usr/bin/kubectl apply -f kaili.yaml
sudo /usr/bin/kubectl apply -f prometheus.yaml
sudo /usr/bin/kubectl apply -f tracing.yaml
