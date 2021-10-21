resource "aws_network_interface" "network-manager" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.152"]
    security_groups = ["Iac_group"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker1" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.153"]
    security_groups = ["Iac_group"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker2" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.154"]
    security_groups = ["Iac_group"]

    tags = {
      Name = "primary_network_interface"
    }
}