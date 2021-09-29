resource "aws_instance" "docker-hosts" {
    for_each = {
        node1 = {
            name = "Manager"
        }
        node2 = {
            name = "Worker1"
        }
        node3 = {
            name = "Worker2"
        }
    }

    instance_type = var.instance_type
    ami = var.ami
    key_name = var.key_pair
    security_groups = ["Iac_group"]

    root_block_device {
        volume_size = var.block_size
        volume_type = var.block_type
        delete_on_termination = yes
    }

    tags = {
        Projeto = "Tópicos Especiais"
        name = "${each.key}: ${lookup(each.value, "name", null)}"
    } 
}