# Project wide variable
PROJECT_NAME                          = "demo"
VPC_ID                                = ""
PRIV_SUBNET_ID_1                      = ""
PRIV_SUBNET_ID_2                      = ""


# RDS variable
RDS_CIDR                              = "0.0.0.0/0"
RDS_ENGINE                            = "aurora"
ENGINE_VERSION                        = "5.6.10a"
BACKUP_RETENTION_PERIOD               = "5"
PUBLICLY_ACCESSIBLE                   = "true"
MASTER_USERNAME                       = "test"
MASTER_PASSWORD                       = "test123#$"
DB_NAME                               = "mydb"



# VPC Variables
VPC_CIDR_BLOCK                        = "10.0.0.0/16"
VPC_PUBLIC_SUBNET1_CIDR_BLOCK         = "10.0.1.0/24"
VPC_PUBLIC_SUBNET2_CIDR_BLOCK         = "10.0.2.0/24"
VPC_PRIVATE_SUBNET1_CIDR_BLOCK        = "10.0.3.0/24"
VPC_PRIVATE_SUBNET2_CIDR_BLOCK        = "10.0.4.0/24"