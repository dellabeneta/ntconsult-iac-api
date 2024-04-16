resource "digitalocean_database_firewall" "trusted_sources" {
  cluster_id = digitalocean_database_cluster.database.id

  rule {
    type  = "k8s"
    value = digitalocean_kubernetes_cluster.doks.id
  }

  depends_on = [digitalocean_kubernetes_cluster.doks]
}