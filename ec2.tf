resource "aws_instance" "test" {
  ami           = "${lookup(var.ami_type,var.region)}"
  instance_type = "${var.instance_type}"
  security_groups = "${lookup(var.instance_type,var.env)}"
  


  tags = {
    Name = "test_vova"
  }
}