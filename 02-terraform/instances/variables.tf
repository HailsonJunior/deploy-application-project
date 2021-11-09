variable "ami" {
    type = string
    description = "AMI da instancia"
    default = "ami-0bad2be4ba2d830fe"
}

variable "instance_type" {
    type = string
    description = "Tipo da instancia"
    default = "t2.micro"
}

variable "block_size" {
    type = number
    description = "Tamanho do armazenamento"
    default = 10
}

variable "block_type" {
    type = string
    description = "Tipo do bloco"
    default = "gp2"
}

variable "subnet_id"{
    type = string
    description = "Id da subnet"
    default = "subnet-3a5ad31b"
}
