output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "Created VPC with the following id"
}

output "public_subnets" {
  value = aws_subnet.public_subnet.*.id
}
