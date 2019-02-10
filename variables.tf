variable "region" {
  default = "us-east-1"
  description = "specify the region where you want to deploy resources"
}

variable "vpc_id" {
  description = "specify the vpc id in which you want to assign security group"
}
