# resource "aws_instance" "myinstance1" {
#   ami           = "ami-0d682f26195e9ec0f"
#   instance_type = "t2.micro"
#   count         = 2
#   tags = {
#     Name = "myinstance1-${count.index}"
#   }
# }

# variable "pool_of_user" {
#   type    = list(string)
#   default = ["rhul", "amit", "binod", "ravi", "kaushal"]  
# }

# resource "aws_iam_user" "myuser" {
#   count = 5
#   name  = var.pool_of_user[count.index]
# }