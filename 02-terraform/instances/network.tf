resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["172.31.83.151/32"]
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
    security_groups = [aws_security_group.allow_ssh.id]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker1" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.3"]
    security_groups = [aws_security_group.allow_ssh.id]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker2" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.4"]
    security_groups = [aws_security_group.allow_ssh.id]

    tags = {
      Name = "primary_network_interface"
    }
}
