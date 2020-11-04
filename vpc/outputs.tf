output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "Created VPC with the following id"
}

output "≈" {
  value = aws_subnet.public_subnet.*.id
}
