provider "aws" {
  region = "ap-south-1"

}

import {
  to = aws_security_group.sg1
  id = "sg-099bcb27fc09871e1"
}