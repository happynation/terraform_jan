resource "aws_instance" "test" {
  ami           = "${var.amitype}"
  instance_type = "t2.micro"
  security_groups = "${var.sgs}"

  tags = {
    Name = "test_vova"
  }
}