variable "amitype" {}
variable "instance_type" {
    type = "map"
    default = {
        dev = "{t2.micro}"
        qa = "{t2.medium}"
    }
}
