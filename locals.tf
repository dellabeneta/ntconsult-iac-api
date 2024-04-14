# LOCALS PARA A VPC

locals {
  vpc_region     = terraform.workspace == "tst" ? "nyc3" : "sfo2"
  vpc_name       = terraform.workspace == "tst" ? "vpc-ntconsult-tst" : "vpc-ntconsult-prd"
  vpc_cidr_block = terraform.workspace == "tst" ? "192.168.0.0/24" : "10.0.0.0/24"
}

# LOCALS PARA CLUSTER DO MONGODB

locals {
  database_region = terraform.workspace == "tst" ? "nyc3" : "sfo2"
  database_name   = terraform.workspace == "tst" ? "mongodb-ntconsult-tst" : "mongodb-ntconsult-prd"
  database_size   = terraform.workspace == "tst" ? "db-s-1vcpu-1gb" : "db-s-2vcpu-4gb"
}

# LOCALS DO CLUSTER DOKS

locals {
  doks_region    = terraform.workspace == "tst" ? "nyc3" : "sfo2"
  doks_name      = terraform.workspace == "tst" ? "doks-ntconsult-tst" : "doks-ntconsult-prd"
  doks_node_name = terraform.workspace == "tst" ? "node-ntconsult-tst" : "node-ntconsult-prd"
  doks_node_size = terraform.workspace == "tst" ? "s-1vcpu-2gb" : "s-2vcpu-4gb"
  doks_min_nodes = terraform.workspace == "tst" ? 1 : 2
  doks_max_nodes = terraform.workspace == "tst" ? 2 : 4
}