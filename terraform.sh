#!/bin/bash
set -e 

# Docs: https://developer.hashicorp.com/terraform/install
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install terraform
aws configure
