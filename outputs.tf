output "security_group_id" {
  value       =  aws_security_group.default.id
  description = "ENI Security Group ID"
}


output "security_group_arn" {
  value       = aws_security_group.default.arn
  description = "ENI Security Group ARN"
}

output "security_group_name" {
  value       = aws_security_group.default.name
  description = "ENI Security Group name"
}