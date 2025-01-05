# if we want to give any value to the end-users then we must write output block.

output "azs" {
  value = data.aws_availability_zones.azs.names
}

output "vpc_id" {
  value = aws_vpc.main.id
}