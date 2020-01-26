variable "amitype" {}
variable "instance_type" {
    type = "map"
    default = {
        dev = {t.2micro}
        qa = {t2.medium}
    }
}
