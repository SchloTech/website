module "efs" {
  source = "cloudposse/efs/aws"
  # Cloud Posse recommends pinning every module to a specific version
  version = "0.32.6"

  namespace = "website"
  stage     = "test"
  name      = "wordpress"
  region    = "us-east-2"
  vpc_id    = "vpc-08c0a224d71f7e69c"
  subnets   = ["subnet-0ac7906facdecf55c", "subnet-02d6ac8d6e5415735", "subnet-0ec9827a7fba187b8"]
  //   zone_id   = [var.aws_route53_dns_zone_id]

  //   allowed_security_group_ids = [var.security_group_id]  #TODO 
}