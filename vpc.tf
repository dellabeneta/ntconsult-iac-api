resource "digitalocean_vpc" "vpc" {
  region   = local.vpc_region
  name     = local.vpc_name
  ip_range = local.vpc_cidr_block
}