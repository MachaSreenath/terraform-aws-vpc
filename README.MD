### This is the module of the VPC creation 

This module creates following resources, 
Here we are using High Availability(HA) - by this we can get how many availability zones we want automatically by using slice function.(Refer in locals.tf file)

-  VPC
-  Internet Gateway
-  Public, Private and Database Subnets each two. 
-  Elastic IP
-  NAT Gateway
-  Public, Private and Database Route Tables
-  Routes
-  Subnets Association
-  VPC peering if user want to create it.
-  And the peering route is default VPC, if user didnt give the acceptor VPC explicitly.



