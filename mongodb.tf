resource "digitalocean_database_cluster" "database" {
  region               = local.database_region
  name                 = local.database_name
  size                 = local.database_size
  node_count           = var.database_node_count
  engine               = var.database_engine
  version              = var.database_version
  private_network_uuid = digitalocean_vpc.vpc.id
}