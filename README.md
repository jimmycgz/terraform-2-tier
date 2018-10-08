# Optimzed configuration code: Terraform-2-Tier (Senario 2 of AWS VPC) 


Build traditional 2 Tier infrastructure in AWS by Terraform, include below resources:
* 1VPC
* 1 Public subnet include 1 VM for Web Server and 1 NAT VM associating with VMs in Priviate Subnet
* 1 Pricate subnet include 1 VM for DB server, associated with the NAT server in the Public subnet
* Created Jenkins Pipeline as code which can trigger the build by just running the Jenkins Project


Detailed Document is available at 

https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html


## terraform-aws-vpc
Use multiple .tf file as below:

* aws.tf define the provider aws with default region and credential
* backend.tf define backend mode, save state file on S3 bucket with pre-defined name
* terraform.tfvars define output vars
* variables.tf define the frequently used variables like CIDR, AMI,etc.
* vpc.tf code to create VPC with NAT VM
* public.tf code to create public subnet in the VPC 
* private.tf code to create priviate subnet in the VPC

Original code is from webpage: https://nickcharlton.net/posts/terraform-aws-vpc.html, I tailered it to Ca region with my own environment settings, fixed the bugs found from the original code. Details are listed at Issue-Log.md

## Usage
terraform.tfvars holds variables which should be overriden with valid ones.

* Plan

       terraform plan -var-file terraform.tfvars
    
* Apply

       terraform apply -var-file terraform.tfvars
       
* Destroy

       terraform destroy -var-file terraform.tfvars
       

Note:
The NAT instance is a special Amazon Linux AMI which handles the routing correctly. It can be found on the AWS Marketplace using the aws command line tool by doing something like this. Like all AMIs, there’s specific images for each region.

    aws ec2 describe-images --filter Name="owner-alias",Values="amazon" --filter Name="name",Values="amzn-ami-vpc-nat*"


## Bring it up & Testing
    terraform apply -var-file terraform.tfvars
