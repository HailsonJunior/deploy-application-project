resource "aws_instance" "manager" {
    instance_type = var.instance_type
    ami = var.ami
    key_name = "${aws_key_pair.my-key.key_name}"
    security_groups = ["Iac_group"]
    network_interface {
        network_interface_id = "${aws_network_interface.network-manager.id}"
        device_index = 0
    }

    root_block_device {
        volume_size = var.block_size
        volume_type = var.block_type
        delete_on_termination = true
    }

    tags = {
        name = "manager"
    } 
}

resource "aws_instance" "worker1" {
    instance_type = var.instance_type
    ami = var.ami
    key_name = "${aws_key_pair.my-key.key_name}"
    security_groups = ["Iac_group"]
    network_interface {
        network_interface_id = "${aws_network_interface.network-worker1.id}"
        device_index = 0
    }

    root_block_device {
        volume_size = var.block_size
        volume_type = var.block_type
        delete_on_termination = true
    }

    tags = {
        name = "manager"
    } 
}

resource "aws_instance" "worker2" {
    instance_type = var.instance_type
    ami = var.ami
    key_name = "${aws_key_pair.my-key.key_name}"
    security_groups = ["Iac_group"]
    network_interface {
        network_interface_id = "${aws_network_interface.network-worker2.id}"
        device_index = 0
    }

    root_block_device {
        volume_size = var.block_size
        volume_type = var.block_type
        delete_on_termination = true
    }

    tags = {
        name = "manager"
    } 
}

resource "aws_key_pair" "my-key" {
    key_name = "my-key"
    public_key = "${file("~/.ssh/id_rsa.pub")}"
}
