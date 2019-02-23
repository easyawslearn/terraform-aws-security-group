# terraform-aws-Security-group

A Terraform module to create an Amazon Web Services (AWS) EC2 instance.

## Usage
```hcl

module "my-sg" {
  source = "git::https://github.com/Patelvijaykumar/terraform-aws-security-group"
  region                     = "us-east-1"
  security_group_name        = "my-sg"
  ingress_prefix_list        = "sg-34e4et78"
  ingress_from_port          = 0
  ingress_to_port            = 0
  ingress_protocol           = "-1"

  ingress_prefix_list        = "sg-34e4et78"
  ingress_from_port          = 443
  ingress_to_port            = 443
  ingress_protocol           = "-1"

}
```

## Variables

- `region` - Regio Name
- `vpc_id` - VPC id for associate sg group
- `security_group_name` - Security group name
- `ingress_prefix_list` - List of prefix list IDs for ingress rule
- `ingress_from_port` - The start port (or ICMP type number if protocol is "icmp")
- `ingress_to_port` - The end range port (or ICMP code if protocol is "icmp")
- `ingress_protocol` - The protocol. If you select a protocol of "-1" (semantically equivalent to "all", which is not a valid value here), you must specify a "from_port" and "to_port" equal to 0. If not icmp, tcp, udp, or "-1" use the protocol number

- `egress_from_port` - The start port (or ICMP type number if protocol is "icmp")
- `egress_to_port` - The end range port (or ICMP code if protocol is "icmp")
- `egress_protocol` - The protocol. If you select a protocol of "-1" (semantically equivalent to "all", which is not a valid value here), you must specify a "from_port" and "to_port" equal to 0. If not icmp, tcp, udp, or "-1" use the protocol number

- `egress_prefix_list` - List of prefix list IDs for egress rule

