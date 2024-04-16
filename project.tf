resource "digitalocean_project" "project" {
  name        = var.project_name
  purpose     = var.project_purpose
  environment = var.project_environment
  resources = [
    digitalocean_database_cluster.database.urn,
    digitalocean_kubernetes_cluster.doks.urn
  ]
}


