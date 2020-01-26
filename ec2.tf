resource "aws_instance" "test" {
  ami           = "${var.amitype}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "test_vova"
  }
}