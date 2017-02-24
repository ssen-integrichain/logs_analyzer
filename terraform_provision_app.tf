provider "aws" {
  access_key = "XXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXX"
  region     = "us-east-1"
}

resource "aws_security_group" "integrichain_allow_all" {
  name = "integrichain_allow_all"
  description = "Allow ALL inbound traffic"

  ingress {
      from_port = 0 
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "sparknode1" {
  ami           = "ami-77d50661"
  instance_type = "t2.small"
  key_name      = "integrchain"
  vpc_security_group_ids = ["${aws_security_group.integrichain_allow_all.id}"]
  tags {
        Name = "sparknode1"
  }
}

resource "aws_instance" "sparknode2" {
  ami           = "ami-77d50661"
  instance_type = "t2.small"
  key_name      = "integrchain"
  vpc_security_group_ids = ["${aws_security_group.integrichain_allow_all.id}"]
  tags {
        Name = "sparknode2"
  }
}
