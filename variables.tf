
variable "tags" {
  type = object({
    Name = string
    Author      = string
    Environment = string
    Provisioner = string
    Region      = string
  })
  description = "security group tags"
}

variable "security_group_name" {
  type = string
  description = "security group name"
}

variable "security_group_description" {
  type = string
  description = "security group description"
}

variable "security_group_rules_egress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "list of egress rules for the security group"
}

variable "vpc_id" {
  type = string
  description = "vpc id for security_group"
}

variable "security_group_rules_ingress" {
  type = list(object(
    {
      description = string
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
      self = bool
      security_groups = list(string)
    }
  ))
  description = "list of ingress rules for the security group"
}