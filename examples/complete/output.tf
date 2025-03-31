output "vpc_id" {
  value = module.my-vpc.vpc_id
}

output "public_subnet" {
  value = module.my-vpc.public_subnet
}

output "private_subnet" {
  value = module.my-vpc.private_subnet
}
