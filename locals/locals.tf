locals {
  sumit = {
    Name = "stagging"
    Environment = "stagging"
  }

  amit = {
    Name = "pre-production"
    Environment = "pre-production"
  }
}

resource "aws_instance" "myec2" {
    ami = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
    tags = local.sumit
}



resource "aws_instance" "myec23" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t3.micro"
    tags = local.amit
}