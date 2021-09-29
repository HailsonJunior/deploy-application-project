variable "ami" {
    type = string
    description = "AMI da instancia"
    default = "ami-06fac50ba6c3b7780"
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