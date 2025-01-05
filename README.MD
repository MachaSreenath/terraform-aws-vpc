## This is the module of the VPC creation 

This module creates following resources, 
Here we are using High Availability(HA) - by this we can get how many availability zones we want automatically by using slice function.(Refer in locals.tf file)

- VPC
- Internet Gateway
- Public, Private and Database Subnets each two. 
- Elastic IP
- NAT Gateway
- Public, Private and Database Route Tables
- Routes
- Subnets Association
- VPC peering if user want to create it.
- And the peering route in default VPC, if user didnt give the acceptor VPC explicitly.
- Adding the peering routes in public, private and database route tables.

## Inputs
### Required Tags
- project_name- your project name 
- environment - which environment you are working

- public_subnets_cidr - user must provide 2 subnets CIDR
- private_subnets_cidr - user must provide 2 subnets CIDR
- database_subnets_cidr - user must provide 2 subnets CIDR

### Optional Tags
- vpc_cidr - Default is 10.0.0.0/16, user can override this
- vpc_peering_tags - Default is empty, type is map
- vpc_tags - Default is empty, type is map

- igw_tags - Default is empty, type is map
- nat_gateway_tags - Default is empty, type is map
- eip_tags - Default is empty, type is map
- enable_dns_host_names - Default value is true
- common_tags - Better to use for identification 

- public_subnets_tags - Default is empty, type is map
- private_subnets_tags - Default is empty, type is map
- database_subnets_tags - Default is empty, type is map

- public_route_table_tags - Default is empty, type is map
- private_route_table_tags - Default is empty, type is map
- database_route_table_tags - Default is empty, type is map

- is_peering_required - Default value is false
- acceptor_vpc_id - here default is default VPC id, user can override this

## Outputs
- vpc_id - VPC ID created
- public_subnet_ids - 2 public subnet ID's created
- private_subnet_ids - 2 private subnet ID's created
- database_subnet_ids - 2 database subnet ID's created