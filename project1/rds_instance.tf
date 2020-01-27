resource "aws_db_instance" "prod"
{
  identifier = "${var.PROJECT_NAME}-prod-rds"
  engine = "${var.RDS_ENGINE}"
  engine_version = "${var.ENGINE_VERSION}"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  database_name = "${var.DB_NAME}"
  backup_retention_period = "${var.BACKUP_RETENTION_PERIOD}"
  publicly_accessible = "${var.PUBLICLY_ACCESSIBLE}"
  username = "${var.MASTER_USERNAME}"
  password = "${var.MASTER_PASSWORD}"
  vpc_security_group_ids = ["${aws_security_group.rds-prod.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.rds_subnet_group.name}"
  

}

resource "aws_db_subnet_group" "rds_subnet_group" {

    name          = "${var.PROJECT_NAME}_aurora_db_subnet_group"
    description   = "Allowed subnets for Aurora DB cluster instances"
    subnet_ids    = [
      "subnet-05b8041c029f3ae95",
      "subnet-03a820918b320be29",
    ]

    tags {
        Name         = "${var.PROJECT_NAME}-rds-Subnet-Group"
    }

}



output "rds_prod_endpoint"
{
  value = "${aws_db_instance.prod.endpoint}"
}