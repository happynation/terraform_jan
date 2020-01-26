resource "aws_instance" "test" {
  ami           = "${var.amitype}"
  instance_type = "t2.micro"

  tags = {
    Name = "test_vova"
  }
}