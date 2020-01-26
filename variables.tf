variable "ami_type" {
    type = "map"
    default = {
        us-east-1 = "ami-062f7200baf2fa504"
        us-east-2 = "ami-062f7200baf2fa505"
        }
}
variable "env"{}
variable "region" {}
variable " instance_type"{
    type = "map"
    default {
        dev = "t2.micro"
        qa = "t2.medium"
    }
}

variable "sgs" {
    type = "string"
    default = ["sg-d1b9e784","sg-21078c44"]
}