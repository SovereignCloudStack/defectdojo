# SCS DefectDojo Installation

## Introduction

This repository contains the infrastructure code necessary to recreate the DefectDojo installation used by SCS for vulnerabilities management.

## Terraform

Terraform is used to deploy the basic infrastructure on gx-scs demonstrator following these steps:

- Ensure all required information is configured in the "*gx-scs/variables.tf*" and "*clouds.yaml*" files.
- Perform a "*terraform init*" command in order to initialize terraform working directory.
- Apply the Terraform manifest to create the basic infrastructure using "*terraform apply*".

## Ansible

Ansible is used to install the required software on the deployed infrastructure following these steps:

- Note the infrastructure external IP (floating_ip) obtained from Terraform final output.
- Run the ansible playbook from the ansible directory using "*ansible-playbook -i <floating_ip>, defectdojo.yaml -u ubuntu*" command.