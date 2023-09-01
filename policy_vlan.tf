resource "intersight_fabric_eth_network_policy" "brattice-vlans" {
  name = "brattice-vlans"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  organization {
    moid = local.organization
  }
}

resource "intersight_fabric_vlan" "vlans_nxos" {
  for_each = var.network_map_nxos

  name = each.key
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  auto_allow_on_uplinks = false
  is_native             = false
  vlan_id               = each.value.vlan

  eth_network_policy {
    moid = intersight_fabric_eth_network_policy.brattice-vlans.moid
  }

  multicast_policy {
    moid = intersight_fabric_multicast_policy.default.moid
  }
}

resource "intersight_fabric_vlan" "aci" {
  for_each = var.network_map_aci

  name = each.key
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  auto_allow_on_uplinks = false
  is_native             = false
  vlan_id               = each.value.vlan

  eth_network_policy {
    moid = intersight_fabric_eth_network_policy.brattice-vlans.moid
  }

  multicast_policy {
    moid = intersight_fabric_multicast_policy.default.moid
  }
}
