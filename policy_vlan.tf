resource "intersight_fabric_eth_network_policy" "brattice-vlans" {
  name = "brattice-vlans"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  profiles {
    moid        = intersight_fabric_switch_profile.brattice-6454-A.moid
    object_type = intersight_fabric_switch_profile.brattice-6454-A.object_type
  }
  profiles {
    moid        = intersight_fabric_switch_profile.brattice-6454-B.moid
    object_type = intersight_fabric_switch_profile.brattice-6454-B.object_type
  }

}

resource "intersight_fabric_vlan" "vlans_nxos" {
  for_each = var.network_map_nxos

  name = each.key
  tags = [local.terraform]

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
  tags = [local.terraform]

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