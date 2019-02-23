provider "aws" {
  region = "${var.region}"
}

locals {
  ingress_from_port = "${var.ingress_from_port}"
  ingress_to_port   = "${var.ingress_to_port}"
  ingress_protocol  = "${var.ingress_protocol}"

  egress_from_port = "${var.egress_from_port}"
  egress_to_port   = "${var.egress_to_port}"
  egress_protocol  = "${var.egress_protocol}"
}

resource "aws_security_group" "allow_all" {
  name        = "${var.security_group_name}"
  description = "Allow all inbound traffic for security group"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port = "${local.ingress_from_port}"
    to_port   = "${local.ingress_to_port}"
    protocol  = "${local.ingress_protocol}"

    //  cidr_blocks     = ["0.0.0.0/0"]
    security_groups = ["${var.ingress_prefix_list}"]
  }

  egress {
    from_port = "${local.egress_from_port}"
    to_port   = "${local.egress_to_port}"
    protocol  = "${local.egress_protocol}"

    //  cidr_blocks     = ["0.0.0.0/0"]
    security_groups = ["${var.egress_prefix_list}"]
  }

  tags = {
    Name = "${var.security_group_name}"
  }
}
