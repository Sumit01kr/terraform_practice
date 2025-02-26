resource "aws_instance" "sg1" {
    ami = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
    tags = {
        Name = "taint-resource"
    }

lifecycle {
    create_before_destroy = true
}
  
}


