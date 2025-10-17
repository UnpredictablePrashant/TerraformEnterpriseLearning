resource "aws_s3_bucket" "example" {
  bucket = "${var.project}-${var.env}"

  tags = {
    environment   = var.env
    project       = var.project
    created_on    = timestamp()
    project_owner = "prashantsavior@gmail.com"
  }
}

module "ec2" {
  source = "../../modules/ec2"

  instance_name = "${var.project}-${var.env}"
  instance_type = "t2.micro"
  ami_id        = "ami-03f861799b8c87497"
}
