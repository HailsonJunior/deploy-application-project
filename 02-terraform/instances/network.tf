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