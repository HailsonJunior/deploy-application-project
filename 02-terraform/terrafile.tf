module "instances" {
  source = "./instances"
  providers = {
    aws = aws.east1
  }
}

module "dynamo-lock" {
  source = "./dynamo-lock"
  providers = {
    aws = aws.east1
  }
}
