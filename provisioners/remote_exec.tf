 provider "aws" {
   region = "ap-south-1"
}
resource "aws_instance" "myec2" {
  ami             = "ami-0d2614eafc1b0e4d2"
  instance_type   = "t2.micro"
  key_name        = "VPC"
  vpc_security_group_ids =   ["sg-09eeeb6f7f8263aad"]
  tags = {
    Name = "myec2"
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:/Users/Sumit Kumar/Downloads/VPC.pem")
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ]
  }

}
