resource "aws_instance" "test" {
  ami           = "${lookup(var.ami_type,var.region)}"
  instance_type = "${lookup(var.instance_type,var.env)}"
  security_groups = "${var.sgs}"
  


  tags = {
    Name = "test_vova"
  }
}