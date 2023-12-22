#!/bin/bash

# Initialize Terraform
terraform init

# app the terraform file and -auto-approve for auto approving the provisioning of resources
terraform apply -auto-approve

# SSH into the provisioned Droplet to execute Docker Compose
ssh -i /path/to/your/private/key root@droplet_ip 'bash -s' << 'ENDSSH'
cd /path/to/your/project
docker-compose up -d