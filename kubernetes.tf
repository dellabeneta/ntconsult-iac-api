resource "digitalocean_kubernetes_cluster" "doks" {
  region               = local.doks_region
  name                 = local.doks_name
  version              = var.doks_version
  auto_upgrade         = var.doks_auto_upgrade
  vpc_uuid             = digitalocean_vpc.vpc.id
  registry_integration = var.doks_registry_integration

  maintenance_policy {
    start_time = var.maintenance_policy_start_time
    day        = var.maintenance_policy_day
  }

  node_pool {
    name       = local.doks_node_name
    size       = local.doks_node_size
    min_nodes  = local.doks_min_nodes
    max_nodes  = local.doks_max_nodes
    auto_scale = var.doks_node_auto_scale
  }
}
