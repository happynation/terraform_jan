resource "aws_instance" "test" {
  ami           = "${lookup(var.amitype,var.region)}"
  instance_type = "t2.micro"
  security_groups = "${var.sgs}"
  


  tags = {
    Name = "test_vova"
  }
}