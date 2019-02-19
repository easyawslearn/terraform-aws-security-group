variable "region" {
  default     = "eu-central-1"
  description = "specify the region where you want to deploy resources"
}

variable "vpc_id" {
  description = "specify the vpc id in which you want to assign security group"
  default     = ""
}

variable "security_group_name" {
  default     = "webserver_sg"
  description = "Name for the security group"
}

variable "egress_prefix_list" {
  type    = "list"
  default = [""]
}

variable "ingress_from_port" {
  default = 80
}

variable "ingress_to_port" {
  default = 80
}

variable "ingress_protocol" {
  default = "tcp"
}
