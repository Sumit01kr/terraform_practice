provider "aws" {
  region = "ap-south-1"
}


# resource "aws_instance" "myec2stag" {
#     ami = "ami-0d682f26195e9ec0f"
#     instance_type = "t2.micro"
#     count = 2
#     tags = {
#         Name = "myec2stag"
#     }

# }