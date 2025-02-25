
provider "aws" {
    region = "ap-south-1"
  
}


resource "aws_instance" "myec21" {
    ami = "ami-00bb6a80f01f03502"
    instance_type = var.instance_type
       tags = {
        Name = "myec21"
    }  
}