module "instances" {
  source = "./instances"
  providers = {
      aws = aws.east1
  }
}