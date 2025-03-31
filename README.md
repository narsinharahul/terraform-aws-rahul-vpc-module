Overview
This Terraform module creates an AWS VPC with a given CIDR block. It also creates multiple subnets (public and private), and for public subnets, it sets up an Internet Gateway (IGW) and appropriate route tables.

Features
Creates a VPC with a specified CIDR block
Creates public and private subnets
Creates an Internet Gateway (IGW) for public subnets
Sets up route tables for public subnets

##usage

```
module "my-vpc" {
  source = "./module/VPC"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "your-vpc-name"
  }

  subnet_config = {
    #key={cidr, az}
    public_subnet-1 = {
      cidr_block = "10.0.1.0/24"
      az         = "eu-north-1a"
      # To set the subnet is public, Default is private.
      public     = true
    }

    public_subnet-2 = {
      cidr_block = "10.0.2.0/24"
      az         = "eu-north-1a"
      public     = true
    }

    private_subnet = {
      cidr_block = "10.0.0.0/24"
      az         = "eu-north-1b"
    }
  }
}
```
