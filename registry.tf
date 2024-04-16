resource "digitalocean_container_registry" "registry" {
  region                 = var.registry_region
  name                   = var.registry_name
  subscription_tier_slug = var.registry_tier_slug
}
