resource "aws_vpc" "my_vpc" {
    cidr_block = "172.16.0.0/16"

    tags = {
        Name = "projeto-tpe"
    }
}

resource "aws_subnet" "my_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "172.16.10.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name = "projeto-tpe"
    }
}

resource "aws_network_interface" "network-manager" {
    subnet_id   = aws_subnet.my_subnet.id
    private_ips = ["172.16.10.100"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker1" {
    subnet_id   = aws_subnet.my_subnet.id
    private_ips = ["172.16.10.101"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface" "network-worker2" {
    subnet_id   = aws_subnet.my_subnet.id
    private_ips = ["172.16.10.102"]

    tags = {
      Name = "primary_network_interface"
    }
}

resource "aws_network_interface_attachment" "attach-manager-interface" {
    instance_id = aws_instance.manager.id
    network_interface_id = aws_network_interface.network-manager.id
    device_index = 0
}

resource "aws_network_interface_attachment" "attach-worker1-interface" {
    instance_id = aws_instance.worker1.id
    network_interface_id = aws_network_interface.network-worker1.id
    device_index = 0
}

resource "aws_network_interface_attachment" "attach-manager-interface" {
    instance_id = aws_instance.worker2.id
    network_interface_id = aws_network_interface.network-worker2.id
    device_index = 0
}