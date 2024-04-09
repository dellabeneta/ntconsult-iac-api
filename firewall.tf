
resource "digitalocean_database_firewall" "trusted_sources" {
  cluster_id = digitalocean_database_cluster.database.id

  rule {
    type  = "k8s"
    value = digitalocean_kubernetes_cluster.doks.id
  }

  rule {
    type = "ip_addr"
    value = var.my_ipv4_address    
  }
}