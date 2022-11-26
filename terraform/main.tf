## Creating AWS EC2 Instance
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Flask-App"

  ami                         = "ami-089a545a9ed9893b6"
  instance_type               = "t2.micro"
  key_name                    = "user1"
  monitoring                  = true
  vpc_security_group_ids      = ["sg-006cfedf16101985c"]
  subnet_id                   = "subnet-04a8e66c183cbc277"
  associate_public_ip_address = true
  user_data                   = file("init.sh")

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "Flask-App"
  }
}
