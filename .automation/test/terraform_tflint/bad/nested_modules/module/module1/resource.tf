variable "override" {
  default = "baz"
}
variable "no_default" {}
variable "unknown" {}

resource "aws_instance" "web" {
  ami           = "ami-b73b63a0"
  instance_type = "t1.2xlarge"

  tags {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-b73b63a1"
  instance_type = "t1.2xlarge"

  tags {
    Name = "HelloWorld2"
  }
}

