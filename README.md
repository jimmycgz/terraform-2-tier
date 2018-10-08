# Terraform-Nginx-Docker
Build Docker container instances by Terraform, associate with Nginx load balancing


## terraform-aws-vpc
Borrowed code from webpage: https://nickcharlton.net/posts/terraform-aws-vpc.html
This repository contains a Terraform project that builds Scenario 2: VPC with Public and Private Subnets from the AWS documentation. It's from this blog post describing how it all works and is designed to give a working example which can the basis of something much more complex.

## Usage
terraform.tfvars holds variables which should be overriden with valid ones.

* Plan

       terraform plan -var-file terraform.tfvars
    
* Apply

       terraform apply -var-file terraform.tfvars
       
* Destroy

       terraform destroy -var-file terraform.tfvars
       
Author Copyright (c) 2015 Nick Charlton nick@nickcharlton.net. MIT Licensed.

The NAT instance is a special Amazon Linux AMI which handles the routing correctly. It can be found on the AWS Marketplace using the aws command line tool by doing something like this. Like all AMIs, there’s specific images for each region.

    aws ec2 describe-images --filter Name="owner-alias",Values="amazon" --filter Name="name",Values="amzn-ami-vpc-nat*"


## Bring it up & Testing
    terraform apply -var-file terraform.tfvars
