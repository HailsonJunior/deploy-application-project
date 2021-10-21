resource "aws_network_interface" "network-manager" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.152"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker1" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.153"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker2" {
    subnet_id   = var.subnet_id
    private_ips = ["172.31.83.154"]

    tags = {
      Name = "primary_network_interface"
    }
}