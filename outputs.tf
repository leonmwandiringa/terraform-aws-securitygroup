output "security_group_id" {
  value       =  aws_security_group.default.id
  description = "EC2 instance Security Group ID"
}

output "security_group_arn" {
  value       = aws_security_group.default.arn
  description = "EC2 instance Security Group ARN"
}

output "security_group_name" {
  value       = aws_security_group.default.name
  description = "EC2 instance Security Group name"
}