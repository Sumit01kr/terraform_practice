provider "aws" {
  region = "ap-south-1"

}

resource "aws_instance" "ec21" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  tags = {
    Name = "ec2-1"
  }

}


resource "aws_instance" "ec22" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t3.micro"
  tags = {
    Name = "ec2-2"
  }

}


resource "aws_security_group" "sumitgsg1" {
    name        = "sumitgsg1"
    description = "Allow inbound traffic"
    vpc_id      = "vpc-0557b971d40bb1369"
    ingress {
        description = "HTTPS"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

}
}


