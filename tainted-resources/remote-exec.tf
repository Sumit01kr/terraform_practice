provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  key_name = "otel-demo-key"
  security_groups = ["default"]
  tags = {
    Name = "example-instance"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = "otel-demo-key"
    #path       = "C:\Users\Sumit Kumar\Downloads\otel-demo-key.pem"
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo install -y httpd",
      "sudo systemctl start httpd"
    ]
  }
}