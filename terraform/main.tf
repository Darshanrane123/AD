provider "aws" {
  region = "ap-south-1"
    access_key = "CR"
     secret_key = "CR"	
}

resource "aws_instance" "TEITSERVER" {
  ami                    = "ami-0522ab6e1ddcc7055"
  instance_type          = "t2.micro"
  #availability_zone      = "ap-south-1"
  key_name               = "aws"
  vpc_security_group_ids = ["sg-0d3c6df027299b9bf"]
  tags = {
    Name    = "My-Instance"
    Project = "TEIT_AWS"
  }
}
