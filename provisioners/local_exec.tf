
provider "aws" {
  region = "ap-south-1"

}

resource "aws_instance" "myec2" {
  ami           = "ami-0d2614eafc1b0e4d2"
  instance_type = "t2.micro"
  tags = {
    Name = "myec2"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.public_ip} > ip_address.txt"

  }
}
