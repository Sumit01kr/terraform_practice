

#creating ec2 with same AMI
# variable "poolofec2" {
#     type    = list(string)
#     default = ["t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge"]
  
# }


# resource "aws_instance" "myinstance1" {
#   ami           = "ami-0d682f26195e9ec0f"
#   count         = length(var.poolofec2)
#   instance_type = "${var.poolofec2[count.index]}"
#   tags = {
#     Name = "prodec2-${count.index}"
#   }
# }


#creating ec2 with different AMIS
variable "poolofservers" {
    type    = map(string)
    default = {
        "server1" = "ami-0d682f26195e9ec0f"
        "server2" = "ami-0d682f26195e9ec0f"
        "server3" = "ami-0d682f26195e9ec0f"
        "server4" = "ami-0d682f26195e9ec0f"
        "server5" = "ami-0d682f26195e9ec0f"
    }

}
#way1
resource "aws_instance" "myinstance2" {
  count = length(var.poolofservers)
  ami           = var.poolofservers[values(var.poolofservers)[count.index]]
  instance_type = "t2.micro"
  tags = {
    Name = "prodec2-${count.index}"
  }
}

#way2
resource "aws_instance" "myec2" {
    for_each = var.poolofservers
    ami           = each.value
    instance_type = "t2.micro"
    tags = {
        Name = "prodec2-${each.key}"
    }
  
}


#creating users with dofffernet names
# variable "pool_of_user" {
#   type    = list(string)
#   default = ["rhul", "amit", "binod", "ravi", "kaushal"]  
# }

# resource "aws_iam_user" "myuser" {
#   count = 5
#   name  = var.pool_of_user[count.index]
# }