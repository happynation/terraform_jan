variable "amitype" {
    default - "ami-062f7200baf2fa504"
}
variable "instance_type" {
    type = "map"
    default = {
        dev = "{t2.micro}"
        qa = "{t2.medium}"
    }
}
