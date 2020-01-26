resource "aws_instance" "test" {
  ami           = "${lookup(var.ami_type,var.region)}"
  instance_type = "t2.micro"
  security_groups = "${lookup(var.instance_type,var.env)}"
  


  tags = {
    Name = "test_vova"
  }
}