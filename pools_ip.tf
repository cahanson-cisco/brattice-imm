variable "ip_pools_map" {
  type = map(object({
    starting_address = string
    block_size       = number
    netmask          = string
    gateway_address  = string
    primary_dns      = string
    secondary_dns    = string
  }))
  default = {
    brattice_inband_kvm = {
      starting_address = "10.0.50.11"
      block_size       = 20
      netmask          = "255.255.255.0"
      gateway_address  = "10.0.50.1"
      primary_dns      = "10.0.40.254"
      secondary_dns    = ""
    }
  }
}

resource "intersight_ippool_pool" "ip_pools" {
  for_each = var.ip_pools_map

  name = each.key
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  assignment_order = "sequential"

  ip_v4_blocks {
    from = each.value.starting_address
    size = each.value.block_size
  }

  ip_v4_config {
    gateway       = each.value.gateway_address
    netmask       = each.value.netmask
    primary_dns   = each.value.primary_dns
    secondary_dns = each.value.secondary_dns
  }

  lifecycle {
    ignore_changes = [ip_v4_blocks]
  }
}