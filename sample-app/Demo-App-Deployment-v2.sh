#!/bin/bash
# This script is used to provision aws resources using terraform.

set -xv

home_dir=/var/lib/jenkins/workspace/Demo-App-Deployment/sample-app
cd $home_dir


sudo /usr/bin/kubectl apply -f bookinfo/platform/kube/bookinfo_v2.yaml
sudo /usr/bin/kubectl apply -f bookinfo/networking/bookinfo-gateway.yaml
