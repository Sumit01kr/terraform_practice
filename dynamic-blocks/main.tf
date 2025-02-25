variable "sg_ports" {
    type = map(number)
    default = {
        "ssh" = 22
        "http" = 80
        "https" = 443
    }
}

resource "aws_security_group" "mysg" {
    name = "my-sg"
    vpc_id = "vpc-0557b971d40bb1369"
    tags = {
        Name = "my-sg"
    }
    dynamic "ingress" {
        for_each = var.sg_ports
        content {
            from_port = ingress.value
            to_port = ingress.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
  }
}
}