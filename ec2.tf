data "aws_availability_zones" "available" {}

resource "aws_instance" "test" {
  ami           = "${lookup(var.ami_type,var.region)}"
  instance_type = "${lookup(var.instance_type,var.env)}"
  security_groups = "${var.sgs}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"

  


  tags = {
    Name = "test_vova"
  }
}