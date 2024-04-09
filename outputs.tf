output "doks_name" {
  value = digitalocean_kubernetes_cluster.doks.name
}

output "doks_endpoint" {
  value = digitalocean_kubernetes_cluster.doks.endpoint
}

output "doks_id" {
  value = digitalocean_kubernetes_cluster.doks.id
}

output "doks_urn" {
  value = digitalocean_kubernetes_cluster.doks.urn
}

output "doks_engine_version" {
  value = digitalocean_kubernetes_cluster.doks.version
}

output "mongodb_host" {
  value = digitalocean_database_cluster.database.host
}

output "mongodb_id" {
  value = digitalocean_database_cluster.database.id
}

output "mongodb_name" {
  value = digitalocean_database_cluster.database.name
}
