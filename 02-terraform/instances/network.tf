resource "aws_security_group" "terraform-sg" {
  name = "terraform-sg"
  ingress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["172.31.0.0/16", "187.45.60.6/32"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_network_interface" "network-manager" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.2"]
    security_groups = [aws_security_group.terraform-sg.id]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker1" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.3"]
    security_groups = [aws_security_group.terraform-sg.id]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker2" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.4"]
    security_groups = [aws_security_group.terraform-sg.id]

    tags = {
      Name = "primary_network_interface"
    }
}
